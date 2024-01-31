//
//  TokensView.swift
//  Voltix
//
//  Created by Mac on 31.01.2024.
//

import SwiftUI

struct TokensView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HeaderView(
                    rightIcon: "Refresh",
                    leftIcon: "BackArrow",
                    head: "TOKENS",
                    leftAction: {},
                    rightAction: {}
                )
                VaultItem(
                    coinName: "ETH",
                    amount: "1.234",
                    isAmount: true,
                    numberofAssets: "0",
                    coinAmount: "65,899",
                    address: "0x0000000000000000000000000000000000000",
                    isRadio: true,
                    radioIcon: "largecircle.fill.circle"
                )
                VaultItem(
                    coinName: "USDT",
                    amount: "1.234",
                    isAmount: true,
                    numberofAssets: "0",
                    coinAmount: "65,899",
                    address: "0xAc5B10F420cb1D4a24292bB89862f599b6DE07e4",
                    isRadio: true,
                    radioIcon: "circle"
                )
                VaultItem(
                    coinName: "USDC",
                    amount: "1.234",
                    isAmount: true,
                    numberofAssets: "0",
                    coinAmount: "65,899",
                    address: "0x42b6DE07e40cb1D4a24292bB89862f599Ac5B10F",
                    isRadio: true,
                    radioIcon: "circle"
                )
                
                VaultItem(
                    coinName: "WBTC",
                    amount: "1.234",
                    isAmount: true,
                    numberofAssets: "0",
                    coinAmount: "65,899",
                    address: "0xE07e40cb1D4a24292bB89862f599Ac5B10F42b6D",
                    isRadio: true,
                    radioIcon: "circle"
                )
                VaultItem(
                    coinName: "UNI",
                    amount: "1.234",
                    isAmount: true,
                    numberofAssets: "0",
                    coinAmount: "65,899",
                    address: "0x0000000000000000000000000000000000000",
                    isRadio: true,
                    radioIcon: "largecircle.fill.circle"
                )
                VaultItem(
                    coinName: "LINK",
                    amount: "1.234",
                    isAmount: true,
                    numberofAssets: "0",
                    coinAmount: "65,899",
                    address: "0x0000000000000000000000000000000000000",
                    isRadio: true,
                    radioIcon: "largecircle.fill.circle"
                )
                VaultItem(
                    coinName: "FLIP",
                    amount: "1.234",
                    isAmount: true,
                    numberofAssets: "0",
                    coinAmount: "65,899",
                    address: "0x0000000000000000000000000000000000000",
                    isRadio: true,
                    radioIcon: "largecircle.fill.circle"
                )
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
}

#Preview {
    TokensView()
}
