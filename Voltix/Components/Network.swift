import SwiftUI

struct Network: View {
    @StateObject var networkManager = NetworkManager()

    var body: some View {
        VStack {
            Button("Publish Service") {
                networkManager.publishService()
            }

            Button("Start Browsing") {
                networkManager.startBrowsing()
            }

            Text(networkManager.publishStatus)

            List(networkManager.discoveredServices, id: \.self) { service in
                Text(service.name)
            }
        }
    }
}
