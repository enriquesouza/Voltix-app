//
//  StartView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack() {
            HeaderView(
                rightIcon: "questionmark.circle", leftIcon: "chevron.left", head: "START", leftAction: {}, rightAction: {}
            )
            Spacer()
            VStack() {
                LargeButton(content: "NEW")
                Text("CREATE A NEW VAULT")
                  .font(Font.custom("Montserrat", size: 24).weight(.medium))
                  .lineSpacing(36)
                  .foregroundColor(.black);

            }
            .frame(width: .infinity, height: .infinity)
            Spacer()
            VStack() {
                LargeButton(content: "IMPORT")
                Text("IMPORT AN EXISTING VAULT")
                  .font(Font.custom("Montserrat", size: 24).weight(.medium))
                  .lineSpacing(36)
                  .foregroundColor(.black);
            }
            .frame(width: .infinity, height: .infinity)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    StartView()
}
