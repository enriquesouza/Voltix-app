//
//  LargeButton.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct LargeButton: View {
    let content: String
    
    var body: some View {
        Button(action: {
            // Button action here
        }) {
            Text(content)
                .largeButtonStyle()
        }
        .foregroundColor(.clear) // Ensure the button's intrinsic color doesn't interfere
    }
}

#Preview {
        LargeButton(content: "NEW")
}
