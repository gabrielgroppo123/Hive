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

struct ContentView: View {
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
                print("Voltar")
            }) {
                Image("seta voltar")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                    .padding(.bottom, 35)
            }
            
            Text("Dados pessoais")
                .font(.system(size: 38))
                .fontWeight(.bold)
                .foregroundColor(
                    Color(
                        red: 247/255,
                        green: 54/255,
                        blue: 109/255,
                    ))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 20)
            
            VStack (){
                Text("Nome:")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
               Text(usuario.nome)
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            //}
            
            //VStack {
                Text("E-mail:")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.email)
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom)
            //}
            
            //VStack {
                Text("Telefone:")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.tel)
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            //}
            
            //VStack {
                Text("Endereço:")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                   
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.end)
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            //}
            
            //VStack {
                Text("CPF/CNPJ:")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    
                Text(usuario.cpf)
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .foregroundColor(
                        Color(.gray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, )
            } .padding(.bottom, 30)
            
            
            Button(action:{
                print("Voltar")
            }){
                VStack(alignment: .leading){
                    Text("Editar")
                        
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                       
                        .padding(.top, 15)
                        .padding(.bottom, 17)
                        .frame(width: 105.30144, height: 48.88995, alignment: .center)
                        .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                        .cornerRadius(11)
                } .padding(.trailing, 210)
                    .padding(.bottom, 65)
                    
            }
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
