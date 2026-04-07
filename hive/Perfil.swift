//
//  Perfil.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 01/04/26.
//

import SwiftUI

struct Perfil: View {
    @State var dados: Bool = false
    @State var voltar: Bool = false
    @State var faq: Bool = false
    @State var sair: Bool = false
    var body: some View {
        VStack {
            Button(action:{
                voltar = true
            }) {
                Image("seta")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 35)
                    .padding(.bottom, 25)
            }.navigationDestination(isPresented:$voltar){
                TelaPrincipal()
            }
            
            HStack{
                Text("Meu Perfil")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(
                        Color(
                            red: 247/255,
                            green: 54/255,
                            blue: 109/255,
                        ))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 35)
                    .padding(.bottom, 25)
                
                Spacer()
                
            }
            
            HStack{
                Image("user 1")
                    .resizable()
                    .frame(width: 70, height: 70)
                
                Label("Gabriel Groppo", systemImage: "nome")
                    .font(.system(size: 28))
                
                Spacer()
                        
            } .padding(.horizontal, 35)
            .padding(.bottom, 25)
            
            
            
            VStack{
                HStack{
                    Text("Número da conta")
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.darkGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, 10)
                    Spacer()
                    Text("234578-2")
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 35)
                        .padding(.bottom, 10)
                }
                HStack{
                    Text("Agência")
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.darkGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, 10)
                    Spacer()
                    Text("0001")
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 35)
                        .padding(.bottom, 10)
                }
                HStack{
                    Text("Banco")
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.darkGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, 20)
                    Spacer()
                    Text("335-hive")
                        .font(.system(size: 19))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 35)
                        .padding(.bottom, 20)
                }
                
                Button(action:{
                    dados = true
                        
                }){
                    VStack(alignment: .leading){
                        Text("Dados pessoais")
                            //.padding(.leading, 19)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            //.padding(.trailing, 100)
                            //.padding(.vertical, 15)
                            .frame(width: 320, height: 60)
                            .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                            .cornerRadius(12)
                    }.navigationDestination(isPresented: $dados){
                        InfoPessoal()
                    }
                        //.padding(.bottom, 5)
                }
 
                Button(action:{
                    faq = true
                }){
                    VStack(alignment: .leading){
                        Text("Dúvidas frequentes")
                            //.padding(.leading, 19)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            //.padding(.trailing, 120)
                            //.padding(.top, 15)
                            //.padding(.bottom, 17)
                            .frame(width: 320, height: 60)
                            .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                            .cornerRadius(12)
                    }.navigationDestination(isPresented: $faq){
                        //FAQ()
                    }
                       .padding(.bottom, 10)
                }
            }
            .padding(.vertical)
            
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 320, height: 2)
              .background(.gray.opacity(0.1))
            
            HStack{
                Image("duvida")
                Label("Central de Ajuda",systemImage: "Ajuda")
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(Color(.darkGray))
                    .padding(.leading, -8)
                Spacer()
    
            }.padding(.horizontal, 35)
                .padding(.vertical, 5)
                .padding(.top, 10)
            
            Button(action:{
                sair = true
            }){HStack{
                Image("sair")
                Label("Sair da Conta",systemImage: "Sair")
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(Color(.darkGray))
                    .padding(.leading, -8)
                Spacer()
            }.navigationDestination(isPresented:$sair){
                //TelaLogin()
            }
            }
                .padding(.horizontal, 35)
        }
    }
}
    
#Preview {
        Perfil()

}
