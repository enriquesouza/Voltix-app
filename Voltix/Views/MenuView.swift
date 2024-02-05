//
//  MenuView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack() {
          HeaderView(
            rightIcon: "QuestionMark",
            leftIcon: "BackArrow",
            head: "MENU",
            leftAction: {},
            rightAction: {}
          )
          VStack(alignment: .leading) {
            Text("Choose Vault")
                .font(Font.custom("Menlo", size: 20))
                .lineSpacing(30)
                .foregroundColor(.black);
            DropdownComponent(selectedOption: "Bitcoin")
          }
          .padding()
          Spacer().frame(height: 30)
          MenuItem(content: "ADD VAULT")
          MenuItem(content: "EXPORT VAULT")
          MenuItem(content: "FORGET VAULT")
          MenuItem(content: "VAULT RECOVERY")
          Spacer()
          VStack {
            Text("VOLTIX APP V1.23")
            .font(Font.custom("Menlo", size: 20).weight(.bold))
            .lineSpacing(30)
            .foregroundColor(.black);
          }
          .frame(width: .infinity, height: 110)
        }
        .padding(.trailing, 20)
        .padding(.leading, 20)
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
    MenuView()
}
