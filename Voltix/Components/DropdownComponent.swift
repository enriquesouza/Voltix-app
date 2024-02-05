//
//  DropdownComponent.swift
//  Voltix
//
//  Created by Mac on 01.02.2024.
//

import SwiftUI

struct DropdownComponent: View {
    @State private var selectedOption: String
        private let options = ["Bitcoin", "Ethereum", "Thorchain"]

    init(selectedOption: String) {
        self.selectedOption = selectedOption
    }
        var body: some View {
            Menu {
                ForEach(options.indices, id: \.self) { index in
                    Button(action: {
                        self.selectedOption = options[index]
                    }) {
                        HStack() {
                            Text(options[index])
                                .font(Font.custom("Menlo", size: 20).weight (.bold))
                                .lineSpacing(30)
                                .foregroundColor(.black);
                        }
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                        .foregroundColor(.clear)
                        .frame(width: 370, height: 55)
                        .background(Color(red: 0.92, green: 0.92, blue: 0.93))
                        .cornerRadius(10);
                    }
                }
            } label: {
                HStack() {
                    Text(self.selectedOption)
                        .font(Font.custom("Menlo", size: 20).weight (.bold))
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
                .frame(width: 370, height: 55)
                .background(Color(red: 0.92, green: 0.92, blue: 0.93))
                .cornerRadius(10);
            }
        }
}

#Preview {
    DropdownComponent(selectedOption: "Bitcoin")
}
