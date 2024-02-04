import Foundation
import Network
import UIKit
import Combine

class NetworkManager: NSObject, NetServiceBrowserDelegate, NetServiceDelegate, ObservableObject {
    var serviceBrowser: NetServiceBrowser?
    var netService: NetService?
    
    @Published var deviceName = ""
    @Published var netServiceType: String = "_voltixWallet._tcp."
    @Published var netServiceDomain: String = "local."
    @Published var netServicePort: Int32 = 65535
    
    @Published var discoveredServices: [NetService] = []
    @Published var publishStatus: String = ""
    @Published var isServicePublished: Bool = false
    @Published var isBrowsing: Bool = false
    @Published var lastError: String? = nil
    
    // Browse for services
    func startBrowsing() {
        serviceBrowser = NetServiceBrowser()
        serviceBrowser?.delegate = self
        serviceBrowser?.searchForServices(ofType: netServiceType, inDomain: netServiceDomain)
        self.isBrowsing = true
    }
    
    // Publish a service
    func publishService() {
        #if os(iOS)
        deviceName = UIDevice.current.name
        #endif
        #if os(macOS)
        deviceName = Host.current().localizedName ?? "Unknown"
        #endif
        
        netService = NetService(domain: netServiceDomain, type: netServiceType, name: deviceName, port: netServicePort)
        netService?.delegate = self
        netService?.publish()
        
        isServicePublished = true
    }
    
    // MARK: - NetServiceBrowserDelegate Methods
    func netServiceBrowser(_ browser: NetServiceBrowser, didFind service: NetService, moreComing: Bool) {
        DispatchQueue.main.async {
            self.discoveredServices.append(service)
            service.delegate = self
            service.resolve(withTimeout: 10.0)
            print("Found service: \(service.name)")
        }
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didNotSearch errorDict: [String : NSNumber]) {
        DispatchQueue.main.async {
            self.lastError = "Failed to search: \(errorDict)"
            self.isBrowsing = false
        }
    }
    
    // MARK: - NetServiceDelegate Methods
    func netServiceDidPublish(_ sender: NetService) {
        DispatchQueue.main.async {
            self.publishStatus = "Service Published: \(sender.name)"
            self.isServicePublished = true
            self.lastError = nil
        }
    }
    
    func netService(_ sender: NetService, didNotPublish errorDict: [String : NSNumber]) {
        DispatchQueue.main.async {
            self.publishStatus = "Failed to Publish: \(errorDict)"
            self.isServicePublished = false
            self.lastError = "Failed to publish: \(errorDict)"
        }
    }
    
    func netServiceDidResolveAddress(_ sender: NetService) {
        // Once a service is resolved, print its details
        DispatchQueue.main.async {
            if let addressData = sender.addresses?.first {
                let address = String(data: addressData, encoding: .utf8) ?? "unknown"
                print("Resolved \(sender.name): \(address)")
            }
        }
    }
}
