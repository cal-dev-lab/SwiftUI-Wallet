//
//  CardListView.swift
//  Wallet
//
//  Created by dev on 15/03/2021.
//

import SwiftUI

struct CardListView: View {
    @EnvironmentObject var wallet: Wallet
    
    var headerView: some View {
        HStack {
            Text("Your cards")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Button("Add new") {}
                .font(.callout)
                .foregroundColor(Color.primaryPurple)
                .padding(.trailing)
        }
    }
    
    var body: some View {
        VStack {
            headerView
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(wallet.cards.indices, id: \.self) { index in
                        CardView(card:
                            wallet.cards[index])
                            .onTapGesture {
                                wallet.cards.indices
                                    .forEach { index in
                                    wallet.cards[index].isSelected = false
                                }
                                wallet.cards[index].isSelected.toggle()
                            }
                    }
                }
            }
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
