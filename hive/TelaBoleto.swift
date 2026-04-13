//
//  ContentView.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 31/03/26.
//

import SwiftUI

struct AreaBoleto: View {
    @Environment(\.dismiss) var dismiss
    @State var voltar: Bool = false
    @State var escanear: Bool = false
    @State var codigo: Bool = false
    
    var body: some View {
        VStack {
            Text("Área Boleto")
                .font(.custom("Parkinsans", size: 38))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 25)
            
            VStack{
                Button(action:{
                    escanear = true
                }){
                    HStack{
                        Image("escanear")
                        Text("Escanear")
                            .foregroundColor(.white)
                            .padding(.trailing, 180)
                            .font(.custom("Rubik", size: 20))
                            .fontWeight(.semibold)
                    }
                    .frame(width: 320, height: 50)
                    .background(Color("corPrincipal"))
                    .cornerRadius(12)
                    .navigationDestination(isPresented: $escanear){
                        //BoletoDigitar()
                    }
                }.padding(.bottom, 5)
                
                Button(action:{
                    codigo = true
                }){
                    HStack{
                        Image("digitar")
                        Text("Digitar código")
                            .foregroundColor(.white)
                            .padding(.trailing, 137)
                            .font(.custom("Rubik", size: 20))
                            .fontWeight(.semibold)
                    }
                    .frame(width: 320, height: 50)
                    .background(Color("corPrincipal"))
                    .cornerRadius(12)
                    .navigationDestination(isPresented: $codigo){
                        //BoletoDigitar()
                    }
                    .padding(.bottom, 80)
                }
            }
            
            VStack{
                Text("Histórico")
                    .font(.custom("Rubik", size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("corPrincipal"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                
                HStack{
                    Text("Boleto")
                        .font(.custom("Rubik", size: 22))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    Spacer()
                    Text("- R$200,00")
                        .font(.custom("Rubik", size: 22))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 20)
                    
                    
                }
                HStack{
                    Text("FWT Serviços")
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.bottom, 30)
                        .foregroundColor(Color(.darkGray))
                    Spacer()
                    Text("09/04")
                        .font(.custom("Rubik",size: 18))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 20)
                        .padding(.bottom, 30)
                        .foregroundColor(Color(.darkGray))
                }}
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar) // força ícones claros
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("corPrincipal"))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        Spacer()
        .padding()
        .padding(.bottom, 150)
    }
}

#Preview {
    AreaBoleto()
}
