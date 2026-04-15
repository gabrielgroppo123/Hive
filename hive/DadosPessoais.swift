//
//  ContentView.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 31/03/26.
//

import SwiftUI

struct Info {
    let nome: String;
    let email: String;
    let tel: String;
    let end: String;
    let cpf: String;
}

struct DadosPessoais: View {
    @Environment(\.dismiss) var dismiss
    @State var voltar: Bool = false
    let usuario = Info(
        nome:"Ana Clara Fornazier Rocha",
        email:"pedro.hhteruel@senacsp.edu.br",
        tel:"(11) 99243-0550",
        end:"Av. Nações Unidas, 1145",
        cpf:"303.086.468-01"
    )
    
    var body: some View {
        VStack {
            
            
//
            Text("Dados pessoais")
                .font(.custom("Parkinsans", size: 38))
                .fontWeight(.bold)
                .foregroundStyle(Color("corPrincipal"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 35)
                .padding(.bottom, 50)
                .padding(.top, 40)
            
            //Spacer()
            
            VStack{
                VStack (){
                    Text("Nome:")
                        .font(.custom("Rubik", size: 20))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                    Text(usuario.nome)
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.gray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, )
                    //}
                    
                    //VStack {
                    Text("E-mail:")
                        .font(.custom("Rubik", size: 20))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                    
                    Text(usuario.email)
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.gray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom)
                    
                    Text("Telefone:")
                        .font(.custom("Rubik", size: 20))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                    
                    Text(usuario.tel)
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.gray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, )
                    
                    Text("Endereço:")
                        .font(.custom("Rubik", size: 20))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                    
                    Text(usuario.end)
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.gray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                        .padding(.bottom, )
                    //}
                    
                    //VStack {
                    Text("CPF/CNPJ:")
                        .font(.custom("Rubik", size: 20))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                    
                    Text(usuario.cpf)
                        .font(.custom("Rubik", size: 18))
                        .fontWeight(.regular)
                        .foregroundColor(
                            Color(.gray))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                } .padding(.bottom, 40)
                
                
                Button(action:{
                    print("Editar")
                }){
                    VStack(alignment: .leading){
                        HStack{
                            Text("Editar")
                            //.padding(.leading, 19)
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .font(.custom("Rubik", size: 20))
                                //.padding(.trailing, 40)
                            //.padding(.vertical, 15)
                                .frame(width: 125, height: 50)
                                .background(Color("corPrincipal"))
                                .cornerRadius(11)
                            Spacer()
                        }.padding(.horizontal, 35)
                    }
                }
            }
            Spacer()
            Spacer()
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
    DadosPessoais()
}
