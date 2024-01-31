//
//  SetupView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct SetupView: View {
    var body: some View {
        VStack() {
            HeaderView(
              rightIcon: "questionmark.circle",
              leftIcon: "chevron.left",
              head: "SETUP",
              leftAction: {},
              rightAction: {}
            )
            Text("YOU NEED THREE DEVICES.")
              .font(Font.custom("Montserrat", size: 24).weight(.medium))
              .lineSpacing(36)
              .foregroundColor(.black);
            DeviceView(
                number: "1",
                description: "MAIN",
                deviceImg: "Device1",
                deviceDescription: "A MACBOOK"
            )
            Spacer()
            DeviceView(
                number: "2",
                description: "PAIR",
                deviceImg: "Device2",
                deviceDescription: "ANY"
            )
            Spacer()
            DeviceView(
                number: "3",
                description: "PAIR",
                deviceImg: "Device3",
                deviceDescription: "ANY"
            )
            HStack(spacing: 25) {
                ZStack() {
                    Image("Wifi")
                    .resizable()
                    .frame(width: 36, height: 29)
                }
                .frame(width: 36, height: 29)
                Text("Keep devices on same WiFi Network with VOLTIX open")
                .font(Font.custom("Montserrat", size: 24).weight(.medium))
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .lineSpacing(5)
                .foregroundColor(.black)
            }
            .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 0))
            .frame(width: 430, height: 71);
            BottomBar(content: "CONTINUE", onClick: { })
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

#Preview {
    SetupView()
}
