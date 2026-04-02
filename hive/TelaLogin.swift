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
    @State var irHome: Bool = false
    
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
                .font(Font.custom("Parkinsans",size: 30))
                .padding(.bottom, 10)
                .fontWeight(.bold)
            // Campo email
            TextField("CPF/e-mail", text: $email)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 350)
            
            // Campo senha
            SecureField("Digite sua senha", text: $senha)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 350)
            
            // Esqueci minha senha
            HStack {
                Spacer()
                Button("Esqueci minha senha") {}
                    .foregroundColor(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .font(.footnote)
                    .padding(.trailing, 60)
               
            }
            
            
            // Botão Login
            Button(action: {
                irHome = true
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(width: 250)
                    .padding(15)
                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .cornerRadius(10)
                    .font(Font.custom("Parkinsans",size: 18))
                    
            }
            .padding(.horizontal, 35)
            .padding(.top, 10)
            .navigationDestination(isPresented: $irHome){
                TelaPrincipal()
            }
            
            
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
        .ignoresSafeArea(.keyboard)
        .navigationBarBackButtonHidden(true)
    }
    
}
#Preview {
    TelaLogin()
}
