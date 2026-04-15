//
//  Perfil.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 01/04/26.
//

import SwiftUI

struct Perfil: View {
    @Environment(\.dismiss) var dismiss
    @State var dados: Bool = false
    @State var voltar: Bool = false
    @State var faq: Bool = false
    @State var sair: Bool = false
    var body: some View {
        VStack {

            HStack{
                Text("Meu Perfil")
                    .font(.custom("Parkinsans", size: 40))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("corPrincipal"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 35)
                    .padding(.top, 40)
            }
            
            HStack{
                Image("user")
                    .resizable()
                    .frame(width: 70, height: 70)
                
                Label("Pedro Henrique Hossaka Teruel", systemImage: "nome")
                  //.font(.system(size: 28))
                    .font(.custom("Rubik", size:24))
                
                Spacer()
                        
            } .padding(.horizontal, 35)
            .padding(.bottom, 25)
            
            
            
            VStack{
                HStack{
                    Text("Número da conta")
                        .font(.custom("Rubik", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.darkGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, 10)
                    Spacer()
                    Text("234578-2")
                        .font(.custom("Rubik", size: 16))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 35)
                        .padding(.bottom, 10)
                }
                HStack{
                    Text("Agência")
                        .font(.custom("Rubik", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.darkGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, 10)
                    Spacer()
                    Text("0001")
                        .font(.custom("Rubik", size: 16))
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 35)
                        .padding(.bottom, 10)
                }
                HStack{
                    Text("Banco")
                        .font(.custom("Rubik", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.darkGray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, 20)
                    Spacer()
                    Text("335-hive")
                        .font(.custom("Rubik", size: 16))
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
                            .fontWeight(.semibold)
                            .font(.custom("Rubik", size: 20))
                            .padding(.trailing, 130)
                            //.padding(.vertical, 15)
                            .frame(width: 320, height: 60)
                            .background(Color("corPrincipal"))
                            .cornerRadius(12)
                    }.navigationDestination(isPresented: $dados){
                        DadosPessoais()
                    }
                        //.padding(.bottom, 5)
                }
 
                Button(action:{
                    faq = true
                }){
                    VStack(alignment: .leading){
                        Text("Dúvidas frequentes")
                           
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.custom("Rubik", size: 20))
                            .padding(.trailing, 90)
                            .frame(width: 320, height: 60)
                            .background(Color("corPrincipal"))
                            .cornerRadius(12)
                    }.navigationDestination(isPresented: $faq){
                        DuvidasFrequentes()
                    }
                       .padding(.bottom, 10)
                }
            }
            .padding(.vertical)
            Spacer()
            
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 320, height: 2)
              .background(.gray.opacity(0.1))
              .padding(.vertical, 10)
            
            HStack{
                Image("duvida")
                Label("Central de Ajuda",systemImage: "Ajuda")
                    .font(.custom("Rubik", size: 17))
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
                    .font(.custom("Rubik", size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(Color(.darkGray))
                    .padding(.leading, -8)
                Spacer()
            }.navigationDestination(isPresented:$sair){
                TelaLogin()
            }
            }
                .padding(.horizontal, 35)
                .padding(.bottom, 50)
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
        .ignoresSafeArea(.keyboard)
    }
}
    
#Preview {
        Perfil()

}
