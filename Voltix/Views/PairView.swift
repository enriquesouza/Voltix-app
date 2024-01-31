//
//  PairView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct PairView: View {
    var body: some View {
        VStack {
          HeaderView(
            rightIcon: "QuestionMark",
            leftIcon: "chevron.left",
            head: "PAIR",
            leftAction: {},
            rightAction: {}
          )
          Text("VERIFY ALL DETAILS")
            .font(Font.custom("Montserrat", size: 24).weight(.medium))
            .lineSpacing(36)
            .foregroundColor(.black)
          Spacer().frame(height: 80)
          Text("iPhone 15 Pro\nMatt’s iPhone")
            .font(Font.custom("Montserrat", size: 24).weight(.medium))
            .lineSpacing(12)
            .foregroundColor(.black)
          Spacer().frame(height: 20)
          Text("42")
            .font(Font.custom("Montserrat", size: 80).weight(.light))
            .lineSpacing(120)
            .foregroundColor(.black)
          Spacer()
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
          Spacer().frame(height: 70 )
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
    PairView()
}
     