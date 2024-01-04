//
//  CowsAndBullsApp.swift
//  CowsAndBulls
//
//  Created by Brandon Johns on 1/2/24.
//

import SwiftUI

@main
struct CowsAndBullsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize)
        
        Settings(content: SettingsView.init)
    }
}
