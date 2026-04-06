//
//  ComprovanteBoleto.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 06/04/26.
//

import SwiftUI

struct ComprovanteBoleto: View {
    var body: some View {
        
        VStack{
            Image("confirma")
                .padding(.bottom, 10)
            Text ("Pago R$100,00")
                .font(.system(size: 22))
                .fontWeight(.bold)
                .padding(.bottom, 1)
            Text ("Para X")
                .font(.system(size: 18))
                .fontWeight(.regular)
                .foregroundStyle(Color .gray)
                .padding(.bottom, 100)
            
            HStack{
                Text ("Sobre")
                    .font(.system(size:22))
                    .padding(.bottom, 15)
                    .padding(.leading, 35)
                Spacer()
                
            }
            
            HStack{
                Text("Data da Transação")
                    .font(.system(size:16))
                Spacer()
                Text("Sexta-Feira, 27/04/26")
                    .font(Font.system(size:16))
                
                    
                }
        }
    }
}

#Preview {
    ComprovanteBoleto()
}
