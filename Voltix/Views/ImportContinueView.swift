//
//  ImortCaptureView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct ImportContinueView: View {
    var body: some View {
        VStack() {
            HeaderView(
                rightIcon: "questionmark.circle", leftIcon: "chevron.left", head: "IMPORT", leftAction: {}, rightAction: {}
            )
            VStack {
               HStack {
                 Image("MinusCircle")
                 .resizable()
                 .frame(width: 30, height: 30)
                 .foregroundColor(.black)
                 Spacer().frame(width: 8)
                 Text("voltix-vault-share-jun2024.txt")
                    .font(Font.custom("Montserrat", size: 24).weight(.medium))
                    .lineSpacing(36)
                    .foregroundColor(.black);
               }
               .padding()
            }
            .padding(.top, 16)
            Spacer()
            BottomBar(content: "CONTINUE", onClick: {})
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ImportContinueView()
}

 