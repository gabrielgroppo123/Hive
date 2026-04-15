//
//  ComprovanteBoleto.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 06/04/26.
//

import SwiftUI

struct ComprovanteBoleto: View {
    @State var compartilhar = false
    @State var fechar = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        VStack{
            VStack{
            
                Image("confirma")
                    .padding(.bottom, 10)
                    .padding(.top, 70)
                Text ("Pago R$50,00")
                    .font(.custom("Rubik", size: 22))
                    .fontWeight(.semibold)
                    .padding(.bottom, 1)
                HStack{
                    Text ("Para")
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundStyle(Color .gray)
                        
                    Text ("iPlace Jurubatuba")
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.medium)
                        .foregroundStyle(Color .gray)
                        .padding(.leading, -2)
                }
            }
            Spacer()
            
            VStack{
                HStack{
                    Text ("Sobre")
                        .font(.custom("Rubik", size:20))
                        .padding(.bottom, 15)
                        .padding(.leading, 35)
                    Spacer()
                    
                }
                
                HStack{
                    Text("Data da Transação")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("Sexta-Feira, 27/04/26")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("Horário")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("11:35")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("ID da Transação")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("993839202018274")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 30)
                
                HStack{
                    Text ("Quem recebeu")
                        .font(.custom("Rubik", size:20))
                        .padding(.bottom, 15)
                        .padding(.leading, 35)
                    Spacer()
                    
                }
                
                HStack{
                    Text("Nome")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("iPlace Jurubatuba")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("CPF/CNPJ")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("⦁⦁.⦁⦁⦁.909/⦁⦁⦁⦁-42")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
            }
            Spacer()
            
            VStack{
                Button(action:{
                    compartilhar = true
                }){
                    VStack(alignment: .leading){
                        Text("Compartilhar")
                            .foregroundColor(.white)
                            .frame(width: 320, height: 40)
                            .font(.custom("Rubik", size:16))
                            .background(Color("corPrincipal"))
                            .cornerRadius(12)
                    }.navigationDestination(isPresented:$compartilhar){
                        //Compartilhar()
                    }
                    .padding(.bottom, -3)
                }
                
                Button(action:{
                    fechar = true
                }){
                    VStack(alignment: .leading){
                        Text("Fechar")
                            .foregroundColor(.primary)
                            .font(.custom("Rubik", size: 16))
                            .frame(width: 320, height: 40)
                            .background(Color(.systemGray5))
                            .cornerRadius(12)
                    }.navigationDestination(isPresented:$fechar){
                        TelaPrincipal()
                    }
                }
            }.padding(.bottom, 50)

        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("corPrincipal"))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ComprovanteBoleto()
}
