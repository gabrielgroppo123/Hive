//
//  Comprovante Pix.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 13/04/26.
//

import SwiftUI

struct ComprovantePix: View {
    @State var compartilhar = false
    @State var fechar = false
    var body: some View {
        
        VStack{
            
            Spacer()
            
            VStack{
                Image("confirma")
                    .padding(.bottom, 10)
                    .padding(.top, 50)
                Text ("Pago R$50,00")
                    .font(.custom("Rubik", size: 22))
                    .fontWeight(.semibold)
                    .padding(.bottom, 1)
                HStack{
                    Text ("Para")
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundStyle(Color .gray)
                        
                    Text ("Gabriel Groppo")
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
                    Text("Sexta-Feira, 14/12/26")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("Horário")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("18:32")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("ID da Transação")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("837460827864820")
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
                    Text("Gabriel Groppo")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("CPF/CNPJ")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("⦁⦁⦁.⦁⦁⦁.159-01")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("Chave Pix")
                        .font(.custom("Rubik", size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("(19) 98172-8186")
                        .font(.custom("Rubik", size:14))
                }
                .padding(.horizontal, 35)
              //  .padding(.bottom, 30)
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
            }.padding(.bottom, 20)

        }
    }
}
#Preview {
    ComprovantePix()
}
