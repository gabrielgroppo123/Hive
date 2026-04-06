//
//  ContentView.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 31/03/26.
//

import SwiftUI

struct AreaBoleto: View {
    
    var body: some View {
        VStack {
            Button(action:{
                print("Voltar")
            }) {
                Image("seta")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 35)
            }
            
            Text("Área Boleto")
                .font(.system(size: 38))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 30)
            
            
            Button(action:{
                print("Voltar")
            }){
                VStack(alignment: .leading){
                    Text("Escanear")
                        .foregroundColor(.white)
                        .padding(.trailing, 200)
                        .font(.system(size: 20))
                        .frame(width: 320, height: 50)
                    //.frame(width: 105, height: 49, alignment: .center)
                        .background(.pink)
                        .cornerRadius(12)
                }
            }.padding(.bottom, 5)
            
            Button(action:{
                print("Voltar")
            }){
                VStack(alignment: .leading){
                    Text("Digitar código")
                        .foregroundColor(.white)
                        .padding(.trailing, 160)
                        .font(.system(size: 20))
                        .frame(width: 320, height: 50)
                    //.frame(width: 105, height: 49, alignment: .center)
                        .background(.pink)
                        .cornerRadius(12)
                }
                .padding(.bottom, 80)
            }
            
            
            Text("Histórico")
                .font(.system(size: 24))
                .fontWeight(.bold)
            //.foregroundColor(.pink)
                .foregroundColor(Color(red: 0.97, green: 0.21, blue: 0.43))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 30)
            
            HStack{
                Text("Boleto")
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                Spacer()
                Text("Valor")
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 20)
                
        
            }
            HStack{
                Text("Destino")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 30)
                    .foregroundColor(Color(.darkGray))
                Spacer()
                Text("Data")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 20)
                    .padding(.bottom, 30)
                    .foregroundColor(Color(.darkGray))
            }}
        .padding()
        .padding(.bottom, 150)
    }
}

#Preview {
    AreaBoleto()
}
