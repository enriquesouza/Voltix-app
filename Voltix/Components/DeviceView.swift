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
import SwiftUI

struct DeviceView: View {
    var body: some View {
        ScrollView { // Wrap the content in a ScrollView
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
                WifiBar()
                BottomBar(content: "CONTINUE", onClick: {
                    // Define action for bottom bar button
                })
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        }
    }
}

// Preview
#Preview {
        DeviceView()
}

