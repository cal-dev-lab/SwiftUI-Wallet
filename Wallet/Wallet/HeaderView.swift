//
//  HeaderView.swift
//  Wallet
//
//  Created by dev on 15/03/2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading)
            {
                Text("Good Morning")
                    .font(.callout)
                    .foregroundColor(Color(.systemGray3))
                Text("Callum Lees")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("me")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
