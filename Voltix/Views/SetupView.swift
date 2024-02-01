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
              rightIcon: "QuestionMark",
              leftIcon: "BackArrow",
              head: "SETUP",
              leftAction: {},
              rightAction: {}
            )
            Text("YOU NEED THREE DEVICES.")
              .font(Font.custom("Montserrat", size: 24).weight(.medium))
              .lineSpacing(36)
              .foregroundColor(.black);
            // DeviceView(
            //     number: "1",
            //     description: "MAIN",
            //     deviceImg: "Device1",
            //     deviceDescription: "A MACBOOK"
            // )
            // Spacer()
            // DeviceView(
            //     number: "2",
            //     description: "PAIR",
            //     deviceImg: "Device2",
            //     deviceDescription: "ANY"
            // )
            // Spacer()
            // DeviceView(
            //     number: "3",
            //     description: "PAIR",
            //     deviceImg: "Device3",
            //     deviceDescription: "ANY"
            // )
            WifiBar()
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
