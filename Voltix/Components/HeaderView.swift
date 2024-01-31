//
//  HeaderView.swift
//  Voltix
//
//  Created by Mac on 30.01.2024.
//


import SwiftUI

struct HeaderView: View {
    let rightIcon: String;
    let leftIcon: String;
    let head: String;
    let leftAction: () -> Void;
    let rightAction: () -> Void;

    var body: some View {
        ZStack(alignment: .center) {
            HStack() {
                Button(action: leftAction) {
                    Image(systemName: leftIcon)
                        .resizable()
                        .frame(width: 18, height: 30)
                }
                .foregroundColor(.black)
                Spacer()
                Button(action: rightAction) {
                    Image(systemName: rightIcon)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .foregroundColor(.black)
            } .frame(width: .infinity, height: 130)
            Text(head)
                .font(Font.custom("Menlo", size: 40))
                .foregroundColor(.black)
        }
        .padding()
        .frame(width: .infinity, height: 119);
    }
}



struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(rightIcon: "questionmark.circle", leftIcon: "chevron.left", head: "START", leftAction: {}, rightAction: {}
        )
    }
}
