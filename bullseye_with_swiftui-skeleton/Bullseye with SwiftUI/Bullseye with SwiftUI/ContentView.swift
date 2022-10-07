//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var num: Double = 50
    @State private var exactOn = false

    var body: some View {
        // high score and current level
        HStack {
            VStack() {
                Text("High Score")
                Text("0")
            }.padding(.top, 20).padding(.leading, 20)
            Spacer()
            VStack() {
                Text("Current Level")
                Text("1")
            }.padding(.top, 20).padding(.trailing, 20)
        }
        
        Spacer()
        
        // slider
        VStack {
            Text("Move the slider to:").font(.system(size: 30))
            Text("25").font(.system(size: 30))
            Slider(value: $num, in: 0...100).padding(.leading, 20).padding(.trailing, 20)
            Button("check") {}
        }
        
        Spacer()
        
        // toggle
        VStack {
            Text("Exact Mode?")
            Toggle("", isOn: $exactOn).labelsHidden()
        }
    }
}
