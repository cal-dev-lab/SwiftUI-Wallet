//
//  CardView.swift
//  Wallet
//
//  Created by dev on 15/03/2021.
//

import SwiftUI

struct CardView: View {
    let card: Card
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(card.imageName)
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            .padding(.horizontal, 10)
            .padding(.top, 5)
            Spacer()
            Text("$\(card.balance)")
                .foregroundColor(card.textColor)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text("\(card.cardNumber)")
                .foregroundColor(card.textColor)
                .font(.callout)
        }
        .padding(.vertical, 10)
        .background(card.backgroundColor)
        .cornerRadius(10)
        .frame(width: 110, height: 150)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
