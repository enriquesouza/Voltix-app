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
            DeviceView()
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
