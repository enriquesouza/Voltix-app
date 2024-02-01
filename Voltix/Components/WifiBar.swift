import SwiftUI

struct WifiBar: View {
    var body: some View {
        HStack(spacing: 25) {
            ZStack {
                Image("Wifi")
                    .resizable()
                    .frame(width: 36, height: 29)
            }
            .frame(width: 36, height: 29)
            
            Text("Keep devices on same WiFi Network with VOLTIX open")
                .font(Font.custom("Montserrat", size: 24).weight(.medium))
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(5)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading) // Limit text width
        }
        .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25)) // Adjust padding as needed
        .frame(width: UIScreen.main.bounds.width) // Use screen width
    }
}

// Preview
#Preview {
    WifiBar()
}
