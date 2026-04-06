//
//  Perfil.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 01/04/26.
//

import SwiftUI

struct TelaPerfil: View {
    @State var irHome: Bool = false
    var body: some View {
        VStack {
            //SetaVoltar
            Button(action: { irHome = true }) {
                Image("seta voltar")
            }
            .buttonStyle(.plain)
            .navigationDestination(isPresented: $irHome) {
                TelaPrincipal()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 35)
            .padding(.bottom, 25)
            
            
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
                
                
                
            }
            
            HStack{
                Image("user")
                    .resizable()
                    .frame(width: 70, height: 70)
                
                Label("Nome", systemImage: "nome")
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
                    print("Informacoes pessoais")
                        
                }){
                    VStack(alignment: .leading){
                        Text("Dados pessoais")
                            
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            
                            .padding(.vertical, 15)
                            .frame(width: 320, height: 60)
                            .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                            .cornerRadius(11)
                            
                    }
                        .padding(.bottom, 5)
                }
 
                Button(action:{
                    print("Voltar")
                }){
                    VStack(alignment: .leading){
                        Text("Dúvidas frequentes")
                           
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            
                            .padding(.top, 15)
                            .padding(.bottom, 17)
                            .frame(width: 320, height: 60)
                            .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                            .cornerRadius(11)
                    }
                       .padding(.bottom, 10)
                }
            }.padding(.vertical)
            
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 320, height: 2)
              .background(.black.opacity(0.11))
            
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
            
            HStack{
                Image("sair")
                Label("Sair da Conta",systemImage: "Sair")
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(Color(.darkGray))
                    .padding(.leading, -8)
                Spacer()
            }.padding(.horizontal, 35)
        }
    }
}
    
#Preview {
        TelaPerfil()

}
