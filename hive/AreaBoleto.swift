//
//  ContentView.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 31/03/26.
//

import SwiftUI

struct AreaBoleto: View {
    @State var voltar: Bool = false
    @State var escanear: Bool = false
    @State var codigo: Bool = false
    
    var body: some View {
        VStack {
            Button(action:{ voltar = true }) {
                Image("seta")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 35)
            }.navigationDestination(isPresented: $voltar){
                TelaPrincipal()
            }
            
            Text("Área Boleto")
                .font(.system(size: 38))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 60)
            
            
            Button(action:{
                escanear = true
            }){
                VStack(alignment: .leading){
                    Text("Escanear")
                        .foregroundColor(.white)
                        //.padding(.trailing, 200)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .frame(width: 320, height: 50)
                    //.frame(width: 105, height: 49, alignment: .center)
                        .background(.pink)
                        .cornerRadius(12)
                }.navigationDestination(isPresented: $escanear){
                    BoletoDigitar()
                }
            }.padding(.bottom, 5)
            
            Button(action:{
                codigo = true
            }){
                VStack(alignment: .leading){
                    Text("Digitar código")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        //.padding(.trailing, 160)
                        .font(.system(size: 20))
                        .frame(width: 320, height: 50)
                    //.frame(width: 105, height: 49, alignment: .center)
                        .background(.pink)
                        .cornerRadius(12)
                }.navigationDestination(isPresented: $codigo){
                    BoletoDigitar()
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
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                Spacer()
                Text("- R$200,00")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing, 20)
                
        
            }
            HStack{
                Text("FWT Serviços")
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 30)
                    .foregroundColor(Color(.darkGray))
                Spacer()
                Text("09/04")
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
