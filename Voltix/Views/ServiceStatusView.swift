//
//  ServiceStatusView.swift
//  Voltix
//
//  Created by Enrique Souza Soares on 01/02/24.
//

import Foundation
import SwiftUI

struct ServiceStatusView: View {
    @ObservedObject var networkManager: NetworkManager

    var body: some View {
        VStack {
            Text("Device Name: \(networkManager.deviceName)")
            Text("Service Port: \(networkManager.netServicePort)")
            if networkManager.isServicePublished {
                Text("Service is published.")
                    .foregroundColor(.green)
            } else {
                Text("Service is not published.")
                    .foregroundColor(.red)
            }

            if networkManager.isBrowsing {
                Text("Browsing for services...")
                    .foregroundColor(.blue)
            } else {
                Text("Not browsing.")
                    .foregroundColor(.gray)
            }

            if let lastError = networkManager.lastError {
                Text("Last Error: \(lastError)")
                    .foregroundColor(.orange)
            }
        }
    }
}

#Preview {
    ServiceStatusView(networkManager: NetworkManager())
}
