//
//  ImortCaptureView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct ImportCaptureView: View {
    var body: some View {
        VStack() {
            HeaderView(
                rightIcon: "questionmark.circle", leftIcon: "chevron.left", head: "IMPORT", leftAction: {}, rightAction: {}
            )
            VStack {
                Image("Capture")
                    .resizable()
                    .frame(width: 300, height: 300)
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .center
            )
            .background(Color(red: 0.12, green: 0.12, blue: 0.12))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    ImportCaptureView()
}
 