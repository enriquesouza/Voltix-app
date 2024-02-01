import SwiftUI

// Define a struct for displaying individual device items
struct DeviceItemView: View {
    var number: String
    var descriptionText: String
    var deviceImg: String
    var deviceDescription: String

    var body: some View {
        HStack {
            Text(number)
                .font(.title) // Simplified for demonstration
            VStack(alignment: .leading) {
                Text(descriptionText)
                    .font(.headline)
                Text(deviceDescription)
                    .font(.subheadline)
            }
            Spacer()
            Image(deviceImg)
        }
        .padding()
    }
}

// Define the main DeviceView struct
struct DeviceView: View {
    var body: some View {
        VStack {
            HeaderView(
                rightIcon: "QuestionMark",
                leftIcon: "BackArrow",
                head: "SETUP",
                leftAction: {
                    // Define action for left button
                },
                rightAction: {
                    // Define action for right button
                }
            )
            Text("YOU NEED THREE DEVICES.")
                .font(Font.custom("Montserrat", size: 24).weight(.medium))
                .lineSpacing(36)
                .foregroundColor(.black)
            DeviceItemView(
                number: "1",
                descriptionText: "MAIN",
                deviceImg: "Device1",
                deviceDescription: "A MACBOOK"
            )
            Spacer()
            DeviceItemView(
                number: "2",
                descriptionText: "PAIR",
                deviceImg: "Device2",
                deviceDescription: "ANY"
            )
            Spacer()
            DeviceItemView(
                number: "3",
                descriptionText: "PAIR",
                deviceImg: "Device3",
                deviceDescription: "ANY"
            )
            HStack(spacing: 25) {
                Image("Wifi")
                    .resizable()
                    .frame(width: 36, height: 29)
                Text("Keep devices on same WiFi Network with VOLTIX open")
                    .font(Font.custom("Montserrat", size: 24).weight(.medium))
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineSpacing(5)
                    .foregroundColor(.black)
            }
            .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 0))
            .frame(width: 430, height: 71)
            BottomBar(content: "CONTINUE", onClick: {
                // Define action for bottom bar button
            })
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        )
    }
}

// SwiftUI Preview Provider
struct DeviceView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceView()
    }
}
