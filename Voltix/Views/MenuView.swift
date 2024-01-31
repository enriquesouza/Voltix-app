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
            leftIcon: "chevron.left",
            head: "Menu",
            leftAction: {},
            rightAction: {}
          )
          VStack(alignment: .leading) {
            Text("Choose Vault")
                .font(Font.custom("Menlo", size: 20))
                .lineSpacing(30)
                .foregroundColor(.black);
            HStack() {
                Text("Main Vault")
                    .font(Font.custom("Menlo", size: 20).weight(.bold))
                    .lineSpacing(30)
                    .foregroundColor(.black);
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 9, height: 15)
                    .rotationEffect(.degrees(90));
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .foregroundColor(.clear)
            .frame(width: .infinity, height: 55)
            .background(Color(red: 0.92, green: 0.92, blue: 0.93))
            .cornerRadius(10);
          }
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
            alignment: .topLeading
        )
    }
}

#Preview {
    MenuView()
}
