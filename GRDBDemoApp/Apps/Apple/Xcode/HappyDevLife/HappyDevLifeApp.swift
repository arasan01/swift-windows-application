//
//  HappyDevLifeApp.swift
//  HappyDevLife
//
//  Created by arasan01 on 2024/03/01.
//

import SwiftUI
import AppleApp
import Born

@main
struct HappyDevLifeApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(
            store: Store(
              initialState: ListFeature.State(),
              reducer: { ListFeature()._printChanges() }
            )
          )
        }
    }
}
