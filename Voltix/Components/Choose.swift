//
//  Choose.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct Choose: View {
    let content: String;
    var body: some View {
        HStack() {
            Image("PlusCircle")
            .resizable()
            .frame(width: 30, height: 30)
            Spacer().frame(width: 20)
            Text("CHOOSE " + content)
                .font(
                    Font.custom("Montserrat", size: 18)
                    .weight(.medium)
                )
                .foregroundColor(.black)
                .frame(width: 191, height: 38, alignment: .leading)
        }
        .padding(.leading, 20)
        .frame(height: 38)
    }
}

#Preview {
    Choose(content: "TOKENS")
}