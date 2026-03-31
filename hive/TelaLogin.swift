//
//  TelaCarregamento.swift
//  hive
//
//  Created by GABRIEL GROPPO on 31/03/26.
//
import SwiftUI

struct TelaLogin: View {
    @State var email: String = ""
    @State var senha: String = ""
    
    var body: some View {
        VStack(spacing: 16) {
            
            Spacer()
            
            // Logo
            Image("Logo Rosa")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding(.bottom, 10)
            
            // Título
            Text("Login")
                .font(.title)
                .bold()
                .padding(.bottom, 10)
            
            // Campo email
            TextField("CPF/e-mail", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 30)
                .frame(width: 350)
            
            // Campo senha
            SecureField("Digite sua senha", text: $senha)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 30)
                .frame(width: 350)
            
            // Esqueci minha senha
            HStack {
                Spacer()
                Button("Esqueci minha senha") {}
                    .foregroundColor(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .font(.footnote)
                    .padding(.trailing, 55)
//                    .padding(.top, -12)
            }
            
            
            // Botão Login
            NavigationLink(destination: TelaPrincipal()) {
                Text("Login")
                    .foregroundColor(.white)
                    .bold()
                    .frame(width: 250)
                    .padding()
                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .cornerRadius(10)
                    
            }
            .padding(.horizontal, 30)
            .padding(.top, 10)
            
            
            // Criar conta
            VStack(spacing: -3) {
                Text("Ainda não tem conta?")
                    .font(.footnote)
                    .foregroundColor(.gray)
                Button("Criar conta") {}
                    .foregroundColor(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .bold()
                    .font(.footnote)
            }
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
    
}
#Preview {
    TelaLogin()
}
