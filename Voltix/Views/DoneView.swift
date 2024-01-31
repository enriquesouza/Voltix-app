//
//  DoneView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct DoneView: View {
    var body: some View {
        VStack(alignment: .leading) {
          HeaderView(
            rightIcon: "questionmark.circle",
            leftIcon: "",
            head: "DONE",
            leftAction: {},
            rightAction: {}
          )
          AddressItem(coinName: "Bitcoin", address: "bc1psrjtwm7682v6nhx2uwfgcfelrennd7pcvqq7v6w")
          AddressItem(coinName: "Ethereum", address: "0x0cb1D4a24292bB89862f599Ac5B10F42b6DE07e4")
          AddressItem(coinName: "Solana", address: "ELPecyZbKieSzNUnAGPZma6q7r8DYa7vFapDto7K1k")
          AddressItem(coinName: "THORChain", address: "thor1cfelrennd7pcvqq7v6w7682v6nhx2uwfg")
          BottomBar(content: "BACKUP", onClick: {})
          Spacer()
          RadioButtonGroup(
            items: [
                "I’VE SAVED A BACKUP OF THE VAULT",
                "NOBODY BUT ME CAN ACCESS THE BACKUP",
                "IT’S NOT LOCATED WITH THE OTHER BACKUP",
            ],
            selectedId: "I’VE SAVED A BACKUP OF THE VAULT"
          ) {
            selected in print("Selected is: \(selected)")
          }
          Spacer().frame(height: 30)
          BottomBar(content: "FINISH", onClick: {})
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
    DoneView()
}
