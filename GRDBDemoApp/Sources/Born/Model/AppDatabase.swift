/*
 Copyright (C) 2015-2024 Gwendal Roué

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

import Foundation
import GRDB
import Logging

/// A database of players.
///
/// You create an `AppDatabase` with a connection to an SQLite database
/// (see <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/databaseconnections>).
///
/// Create those connections with a configuration returned from
/// `AppDatabase/makeConfiguration(_:)`.
///
/// For example:
///
/// ```swift
/// // Create an in-memory AppDatabase
/// let config = AppDatabase.makeConfiguration()
/// let dbQueue = try DatabaseQueue(configuration: config)
/// let appDatabase = try AppDatabase(dbQueue)
/// ```
public struct AppDatabase {
    /// Creates an `AppDatabase`, and makes sure the database schema
    /// is ready.
    ///
    /// - important: Create the `DatabaseWriter` with a configuration
    ///   returned by ``makeConfiguration(_:)``.
    public init(_ dbWriter: any DatabaseWriter) throws {
        self.dbWriter = dbWriter
        try migrator.migrate(dbWriter)
    }

    /// Provides access to the database.
    ///
    /// Application can use a `DatabasePool`, while SwiftUI previews and tests
    /// can use a fast in-memory `DatabaseQueue`.
    ///
    /// See <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/databaseconnections>
    private let dbWriter: any DatabaseWriter
}

// MARK: - Database Configuration

extension AppDatabase {
    private static let sqlLogger = Logger(label: "com.example.grdb-swift.SQL")

    /// Returns a database configuration suited for `PlayerRepository`.
    ///
    /// SQL statements are logged if the `SQL_TRACE` environment variable
    /// is set.
    ///
    /// - parameter base: A base configuration.
    public static func makeConfiguration(_ base: Configuration = Configuration()) -> Configuration {
        var config = base

        // An opportunity to add required custom SQL functions or
        // collations, if needed:
        // config.prepareDatabase { db in
        //     db.add(function: ...)
        // }

        // Log SQL statements if the `SQL_TRACE` environment variable is set.
        // See <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/database/trace(options:_:)>
        #if SQL_TRACE
        config.prepareDatabase { db in
            db.trace {
                sqlLogger.debug("\($0)")
            }
        }
        #endif

#if DEBUG
        // Protect sensitive information by enabling verbose debugging in
        // DEBUG builds only.
        // See <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/configuration/publicstatementarguments>
        config.publicStatementArguments = true
#endif

        return config
    }
}

// MARK: - Database Migrations

extension AppDatabase {
    /// The DatabaseMigrator that defines the database schema.
    ///
    /// See <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/migrations>
    private var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()

#if DEBUG
        // Speed up development by nuking the database when migrations change
        // See <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/migrations>
        migrator.eraseDatabaseOnSchemaChange = true
#endif

        migrator.registerMigration("createPlayer") { db in
            // Create a table
            // See <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/databaseschema>
            try db.create(table: "player") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("name", .text).notNull()
                t.column("score", .integer).notNull()
            }
        }

        // Migrations for future application versions will be inserted here:
        // migrator.registerMigration(...) { db in
        //     ...
        // }

        return migrator
    }
}

// MARK: - Database Access: Writes
// The write methods execute invariant-preserving database transactions.

extension AppDatabase {
    /// A validation error that prevents some players from being saved into
    /// the database.
    public enum ValidationError: LocalizedError {
        case missingName

        public var errorDescription: String? {
            switch self {
            case .missingName:
                return "Please provide a name"
            }
        }
    }

    /// Saves (inserts or updates) a player. When the method returns, the
    /// player is present in the database, and its id is not nil.
    public func savePlayer(_ player: inout Player) async throws {
        if player.name.isEmpty {
            throw ValidationError.missingName
        }
        player = try await dbWriter.write { [player] db in
            try player.saved(db)
        }
    }

    /// Delete the specified players
    public func deletePlayers(ids: [Int64]) async throws {
        try await dbWriter.write { db in
            _ = try Player.deleteAll(db, ids: ids)
        }
    }

    /// Delete all players
    public func deleteAllPlayers() async throws {
        try await dbWriter.write { db in
            _ = try Player.deleteAll(db)
        }
    }

    /// Refresh all players (by performing some random changes, for demo purpose).
    public func refreshPlayers() async throws {
        try await dbWriter.write { db in
            if try Player.all().isEmpty(db) {
                // When database is empty, insert new random players
                try createRandomPlayers(db)
            } else {
                // Insert a player
                for _ in 0..<4 {
                    _ = try Player.makeRandom().inserted(db) // insert but ignore inserted id
                }

                // Delete a random player
                // try Player.order(sql: "RANDOM()").limit(4).deleteAll(db)
                try db.execute(sql: #"""
                    DELETE FROM player WHERE ROWID IN (
                        SELECT ROWID FROM player ORDER BY random() LIMIT 4
                    );
                """#)

                // Update some players
                for var player in try Player.fetchAll(db) where Bool.random() {
                    try player.updateChanges(db) {
                        $0.score = Player.randomScore()
                    }
                }
            }
        }
    }

    /// Create random players if the database is empty.
    public func createRandomPlayersIfEmpty() throws {
        try dbWriter.write { db in
            if try Player.all().isEmpty(db) {
                try createRandomPlayers(db)
            }
        }
    }

    private static let uiTestPlayers = [
        Player(id: nil, name: "Arthur", score: 5),
        Player(id: nil, name: "Barbara", score: 6),
        Player(id: nil, name: "Craig", score: 8),
        Player(id: nil, name: "David", score: 4),
        Player(id: nil, name: "Elena", score: 1),
        Player(id: nil, name: "Frederik", score: 2),
        Player(id: nil, name: "Gilbert", score: 7),
        Player(id: nil, name: "Henriette", score: 3)]

    public func createPlayersForUITests() throws {
        try dbWriter.write { db in
            try AppDatabase.uiTestPlayers.forEach { player in
                _ = try player.inserted(db) // insert but ignore inserted id
            }
        }
    }

    /// Support for `createRandomPlayersIfEmpty()` and `refreshPlayers()`.
    private func createRandomPlayers(_ db: Database) throws {
        for _ in 0..<8 {
            _ = try Player.makeRandom().inserted(db) // insert but ignore inserted id
        }
    }
}

// MARK: - Database Access: Reads

// This demo app does not provide any specific reading method, and instead
// gives an unrestricted read-only access to the rest of the application.
// In your app, you are free to choose another path, and define focused
// reading methods.
extension AppDatabase {
    /// Provides a read-only access to the database
    public var reader: DatabaseReader {
        dbWriter
    }
}
