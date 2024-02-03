//
//  ContentView.swift
//  Voltix
//
//  Created by Mac on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Logo(width: 100, height: 100)
            SaveToKeyChainButton()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
