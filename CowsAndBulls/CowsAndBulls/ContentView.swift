//
//  ContentView.swift
//  CowsAndBulls
//
//  Created by Brandon Johns on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                TextField("Enter a guess...", text: .constant("1234"))
                Button("Go", action: submitGuess)
            }
            .padding()
        }
        .frame(width: 250)
        .frame(minHeight: 300, maxHeight: .infinity)
       
    }
    
    func submitGuess() {
        
    }
}

#Preview {
    ContentView()
}
