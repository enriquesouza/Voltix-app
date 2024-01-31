//
//  VaultView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct VaultView: View {
    var body: some View {
        VStack(alignment: .leading) {
          HeaderView(
            rightIcon: "Refresh",
            leftIcon: "chevron.left",
            head: "Menu",
            leftAction: {},
            rightAction: {}
          )
          VaultItem(
            coinName: "Bitcoin",
            amount: "1.234",
            isAmount: true,
            numberofAssets: "3",
            coinAmount: "65,899",
            address: "bc1psrjtwm7682v6nhx2uwfgcfelrennd7pcvqq7v6w",
            isRadio: true
          )
          VaultItem(
            coinName: "Ethereum",
            amount: "12,000.12",
            isAmount: false,
            numberofAssets: "3",
            coinAmount: "65,899",
            address: "0x0cb1D4a24292bB89862f599Ac5B10F42b6DE07e4",
            isRadio: false
          )
          VaultItem(
            coinName: "Solana",
            amount: "12,000.12",
            isAmount: false,
            numberofAssets: "3",
            coinAmount: "65,899",
            address: "ELPecyZbKieSzNUnAGPZma6q7r8DYa7vFapDto7K1GMJ",
            isRadio: false
          )
          VaultItem(
            coinName: "THORChain",
            amount: "12,000.12",
            isAmount: true,
            numberofAssets: "3",
            coinAmount: "65,899",
            address: "thor1cfelrennd7pcvqq7v6w7682v6nhx2uwfg",
            isRadio: true
          )
          Choose(content: "CHAINS")
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }
}

#Preview {
    VaultView()
}
