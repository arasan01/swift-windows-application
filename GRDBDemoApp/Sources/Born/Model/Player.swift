/*
 Copyright (C) 2015-2024 Gwendal Roué

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
import GRDB

/// The Player struct.
///
/// Identifiable conformance supports SwiftUI list animations, and type-safe
/// GRDB primary key methods.
/// Equatable conformance supports tests.
public struct Player: Identifiable, Equatable {
    public init(id: Int64? = nil, name: String, score: Int) {
        self.id = id
        self.name = name
        self.score = score
    }

    /// The player id.
    ///
    /// Int64 is the recommended type for auto-incremented database ids.
    /// Use nil for players that are not inserted yet in the database.
    public var id: Int64?
    public var name: String
    public var score: Int
}

extension Player {
    private static let names = [
        "Arthur", "Anita", "Barbara", "Bernard", "Craig", "Chiara", "David",
        "Dean", "Éric", "Elena", "Fatima", "Frederik", "Gilbert", "Georgette",
        "Henriette", "Hassan", "Ignacio", "Irene", "Julie", "Jack", "Karl",
        "Kristel", "Louis", "Liz", "Masashi", "Mary", "Noam", "Nicole",
        "Ophelie", "Oleg", "Pascal", "Patricia", "Quentin", "Quinn", "Raoul",
        "Rachel", "Stephan", "Susie", "Tristan", "Tatiana", "Ursule", "Urbain",
        "Victor", "Violette", "Wilfried", "Wilhelmina", "Yvon", "Yann",
        "Zazie", "Zoé"]

    /// Creates a new player with empty name and zero score
    public static func new() -> Player {
        Player(id: nil, name: "", score: 0)
    }

    /// Creates a new player with random name and random score
    public static func makeRandom() -> Player {
        Player(id: nil, name: randomName(), score: randomScore())
    }

    /// Returns a random name
    public static func randomName() -> String {
        names.randomElement()!
    }

    /// Returns a random score
    public static func randomScore() -> Int {
        10 * Int.random(in: 0...100)
    }
}

// MARK: - Persistence

/// Make Player a Codable Record.
///
/// See <https://github.com/groue/GRDB.swift/blob/master/README.md#records>
extension Player: Codable, FetchableRecord, MutablePersistableRecord {
    // Define database columns from CodingKeys
    fileprivate enum Columns {
        static let name = Column(CodingKeys.name)
        static let score = Column(CodingKeys.score)
    }

    /// Updates a player id after it has been inserted in the database.
    mutating public func didInsert(_ inserted: InsertionSuccess) {
        id = inserted.rowID
    }
}

// MARK: - Player Database Requests

/// Define some player requests used by the application.
///
/// See <https://swiftpackageindex.com/groue/grdb.swift/documentation/grdb/recordrecommendedpractices>
extension DerivableRequest<Player> {
    /// A request of players ordered by name.
    ///
    /// For example:
    ///
    ///     let players: [Player] = try dbWriter.read { db in
    ///         try Player.all().orderedByName().fetchAll(db)
    ///     }
    public func orderedByName() -> Self {
        // Sort by name in a localized case insensitive fashion
        // See https://github.com/groue/GRDB.swift/blob/master/README.md#string-comparison
        order(Player.Columns.name.collating(.localizedCaseInsensitiveCompare))
    }

    /// A request of players ordered by score.
    ///
    /// For example:
    ///
    ///     let players: [Player] = try dbWriter.read { db in
    ///         try Player.all().orderedByScore().fetchAll(db)
    ///     }
    ///     let bestPlayer: Player? = try dbWriter.read { db in
    ///         try Player.all().orderedByScore().fetchOne(db)
    ///     }
    public func orderedByScore() -> Self {
        // Sort by descending score, and then by name, in a
        // localized case insensitive fashion
        // See https://github.com/groue/GRDB.swift/blob/master/README.md#string-comparison
        order(
            Player.Columns.score.desc,
            Player.Columns.name.collating(.localizedCaseInsensitiveCompare))
    }
}
