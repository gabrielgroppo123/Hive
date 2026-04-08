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
    @State var voltar: Bool = false
    let usuario = Info(
        nome:"Ana Clara Fornazier Rocha",
        email:"pedro.hhteruel@senacsp.edu.br",
        tel:"(11)99243-0550",
        end:"Av. Nações Unidas, 1145",
        cpf:"303.086.468-01"
    )
    
    var body: some View {
        VStack {
            Button(action:{
                voltar = true
            }) {
                Image("seta voltar")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 35)
                    .padding(.top,50)
            }.navigationDestination(isPresented:$voltar){
                TelaPerfil()
            }
            
            Text("Dados pessoais")
                .font(.custom("Parkinsans", size: 38))
                .fontWeight(.bold)
                .foregroundColor(
                    Color("corPrincipal"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 30)
            
            VStack (){
                Text("Nome:")
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
               Text(usuario.nome)
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            //}
            
            //VStack {
                Text("E-mail:")
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.email)
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom)
            //}
            
            //VStack {
                Text("Telefone:")
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.tel)
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            //}
            
            //VStack {
                Text("Endereço:")
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.end)
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            //}
            
            //VStack {
                Text("CPF/CNPJ:")
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.cpf)
                    .font(Font.custom("Rubik", size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            } .padding(.bottom, 30)
            
            
            Button(action:{
                print("Editar")
            }){
                VStack(alignment: .leading){
                    Text("Editar")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(Font.custom("Rubik", size: 20))
                        .frame(width: 105, height: 50, alignment: .center)
                        .background(Color("corPrincipal"))
                        .cornerRadius(11)
                } .padding(.trailing, 210)
                    .padding(.bottom, 65)
                   
            
            }
                
        }
        Spacer()
    }
}

#Preview {
    DadosPessoais()
}
