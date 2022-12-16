//
//  ContentView.swift
//  navSwiftUi
//
//  Created by Till Hemmerich on 16.12.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                   VStack(spacing: 30) {
                       Text("You're going to flip a coin – do you want to choose heads or tails?")

                       NavigationLink(destination: ResultView(choice: "Heads")) {
                           Text("Choose Heads")
                       }

                       NavigationLink(destination: ResultView(choice: "Tails")) {
                           Text("Choose Tails")
                       }
                   }
                   .navigationTitle("Navigation")
               }
           }
    }


struct ResultView: View {
    var choice: String

    var body: some View {
        Text("You chose \(choice)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
