import Foundation
import Network
import UIKit
import Combine

class NetworkManager: NSObject, NetServiceBrowserDelegate, NetServiceDelegate, ObservableObject {
    var serviceBrowser: NetServiceBrowser?
    var netService: NetService?
    
    let netServiceType: String = "_voltixWallet._tcp."
    let netServiceDomain: String = "local."
    
    // Browse for services
    func startBrowsing() {
        serviceBrowser = NetServiceBrowser()
        serviceBrowser?.delegate = self
        serviceBrowser?.searchForServices(ofType: netServiceType, inDomain: netServiceDomain)
    }
    
    // Publish a service, choose a port in the dynamic/private range (49152-65535) to minimize the risk of conflicts
    func publishService() {
        var deviceName = ""
#if os(iOS)
        deviceName = UIDevice.current.name
#endif
#if os(macOS)
        deviceName = Host.current().localizedName ?? "Unknown"
#endif
        
        netService = NetService(domain: netServiceDomain, type: netServiceType, name: deviceName, port: 65535)
        netService?.delegate = self
        netService?.publish()
    }
    
    // MARK: - NetServiceBrowserDelegate Methods
    func netServiceBrowser(_ browser: NetServiceBrowser, didFind service: NetService, moreComing: Bool) {
        DispatchQueue.main.async {
            self.discoveredServices.append(service)
        }
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didNotSearch errorDict: [String : NSNumber]) {
        // Handle error
    }
    
    // Add other NetServiceBrowserDelegate methods if necessary
    
    // MARK: - NetServiceDelegate Methods
    func netServiceDidPublish(_ sender: NetService) {
        DispatchQueue.main.async {
            self.publishStatus = "Service Published: \(sender.name)"
        }
    }
    
    func netService(_ sender: NetService, didNotPublish errorDict: [String : NSNumber]) {
        // Publishing failed
    }
    
    // Add other NetServiceDelegate methods if necessary
    @Published var discoveredServices: [NetService] = []
    @Published var publishStatus: String = ""
    
    
    
    
}
