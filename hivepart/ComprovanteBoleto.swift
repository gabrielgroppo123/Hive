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
    var body: some View {
        
        VStack{
            Spacer()
            VStack{
                Image("confirma")
                    .padding(.bottom, 10)
                    .padding(.top, 50)
                Text ("Pago R$100,00")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding(.bottom, 1)
                HStack{
                    Text ("Para")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .foregroundStyle(Color .gray)
                        .padding(.trailing, -2)
                    Text ("São José Restaurante")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .foregroundStyle(Color .gray)
                }
            }
            Spacer()
            
            VStack{
                HStack{
                    Text ("Sobre")
                        .font(.system(size:20))
                        .padding(.bottom, 15)
                        .padding(.leading, 35)
                    Spacer()
                    
                }
                
                HStack{
                    Text("Data da Transação")
                        .font(.system(size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("Sexta-Feira, 27/04/26")
                        .font(Font.system(size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("Horário")
                        .font(.system(size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("10h")
                        .font(Font.system(size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("ID da Transação")
                        .font(.system(size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("993839202018274")
                        .font(Font.system(size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 30)
                
                HStack{
                    Text ("Quem recebeu")
                        .font(.system(size:20))
                        .padding(.bottom, 15)
                        .padding(.leading, 35)
                    Spacer()
                    
                }
                
                HStack{
                    Text("Nome")
                        .font(.system(size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("São José Restaurante")
                        .font(Font.system(size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("CPF/CNPJ")
                        .font(.system(size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("957.263.738-89")
                        .font(Font.system(size:14))
                }
                .padding(.horizontal, 35)
                .padding(.bottom, 10)
                
                HStack{
                    Text("Chave Pix")
                        .font(.system(size:14))
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("839839403948502")
                        .font(Font.system(size:14))
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
                            .background(Color(red: 0.97, green: 0.21, blue: 0.43))
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
    ComprovanteBoleto()
}
