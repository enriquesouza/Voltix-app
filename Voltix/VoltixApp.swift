//
//  VoltixApp.swift
//  Voltix
//
//  Created by Mac on 30.01.2024.
//

import SwiftUI

@main
struct VoltixApp: App {
    @StateObject var networkManager = NetworkManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(networkManager)
                                .onAppear {
                                    networkManager.publishService()
                                    networkManager.startBrowsing()
                                }
        }
    }
}
