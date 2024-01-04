//
//  SettingsView.swift
//  CowsAndBulls
//
//  Created by Brandon Johns on 1/3/24.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("maximumGuesses") var maximumGuesses = 100
    @AppStorage("answerLength") var answerLength = 4
    @AppStorage("enableHardMode") var enableHardMode = false
    @AppStorage("showGuessCount") var showGuessCount = false
    var body: some View {
        TabView {
            Form {
                TextField("Maximum guesses: ", value: $maximumGuesses, format: .number)
                    .help("The maximum number of ansers you can submit. Changing this will immediately restart your game")
                
                TextField("Answer Length", value: $answerLength, format: .number)
                    .help("The length of the number string to guess. Changing this will immediately restart yoru game")
                
                if answerLength < 3 || answerLength > 8 {
                    Text("Must be between 3 and 8")
                        .foregroundStyle(.red)
                }
            }
            .padding()
            .tabItem {
                Label("Game", systemImage: "number.circle")
            }
            
            Form {
                Toggle("Enable Hard Mode", isOn: $enableHardMode)
                    .help("This shows the cows and bulls score for only the most recent guess")
                
                Toggle("Show guessss count", isOn: $showGuessCount)
                    .help("Adds a footer below your guesses showing the total")
            }
            .padding()
            .tabItem { 
                Label("Advanced", systemImage: "gearshape.2")
            }
        }
        .frame(width: 400)
    }
}

#Preview {
    SettingsView()
}
