//
//  SendCheckView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct SendCheckView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HeaderView(
                rightIcon: "QuestionMark",
                leftIcon: "BackArrow",
                head: "SEND",
                leftAction: {},
                rightAction: {}
            )
            Text("VERIFY ALL DETAILS")
                .font(Font.custom("Montserrat", size: 24).weight(.medium))
                .lineSpacing(36)
                .foregroundColor(.black)
            Spacer().frame(height: 80)
            RadioButtonGroup(
                items: [
                    "iPhone 15 Pro, “Matt’s iPhone”, 42",
                    "iPhone 13, “Matt’s iPhone 13”, 13",
                ],
                selectedId: "iPhone 15 Pro, “Matt’s iPhone”, 42"
            ) {
                selected in print("Selected is: \(selected)")
            }
            Spacer()
            WifiBar()
            BottomBar(
                content: "CONTINUE",
                onClick: { }
            )
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
    SendCheckView()
}
