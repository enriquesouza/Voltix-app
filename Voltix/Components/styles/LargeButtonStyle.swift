//
//  LargeButtonStyle.swift
//  Voltix
//
//  Created by Enrique Souza Soares on 01/02/24.
//

import Foundation
import SwiftUI

// Color extension for theme management
extension Color {
    static let buttonBackground = Color(red: 0.96, green: 0.96, blue: 0.96)
    static let buttonForeground = Color.black
}

// Font extension for custom fonts
extension Font {
    static let largeButton = Font.custom("Menlo", size: 40).weight(.bold)
}

struct LargeButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeButton)
            .lineSpacing(60)
            .foregroundColor(.buttonForeground)
            .frame(width: 240, height: 148)
            .background(Color.buttonBackground)
            .cornerRadius(12)
    }
}

extension View {
    func largeButtonStyle() -> some View {
        self.modifier(LargeButtonStyle())
    }
}
