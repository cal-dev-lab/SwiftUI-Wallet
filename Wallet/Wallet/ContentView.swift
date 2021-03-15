//
//  ContentView.swift
//  Wallet
//
//  Created by dev on 15/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 35) {
                HeaderView()
                CardListView()
                BalanceView()
                TransferMoneyView()
            }.padding(25)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Wallet())
    }
}
