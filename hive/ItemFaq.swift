//
//  ItemFaq.swift
//  hive
//
//  Created by GABRIEL GROPPO on 10/04/26.
//

import SwiftUI

struct ItemFAQ: View {
    let pergunta: String
    let resposta: String
    @State private var aberto: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: { withAnimation(.spring()) { aberto.toggle() } }) {
                HStack {
                    Text(pergunta)
                        .font(Font.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(Color("corPrincipal"))
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: aberto ? "chevron.up" : "chevron.down")
                        .foregroundColor(Color("corPrincipal"))
                        .bold()
                }
            }
            .buttonStyle(.plain)
            
            if aberto {
                Text(resposta)
                    .font(Font.custom("Rubik", size: 14))
                    .foregroundColor(.primary)
                    .padding(.top, 8)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding(20)
        .background(Color(.systemGray6))
        .cornerRadius(14)
    }
}
