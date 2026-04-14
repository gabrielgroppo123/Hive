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
    @State var irCriarConta: Bool = false
    
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
                .font(Font.custom("Rubik",size: 30))
                .padding(.bottom, 10)
                .fontWeight(.bold)
            // Campo email
            TextField("CPF ou E-mail", text: $email)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 350)
                .font(Font.custom("Rubik",size: 18))
            
            // Campo senha
            SecureField("Digite sua senha", text: $senha)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 350)
                .font(Font.custom("Rubik",size: 18))
            
            // Esqueci minha senha
            HStack {
                Spacer()
                Button("Esqueci minha senha") {}
                    .foregroundColor(Color("corPrincipal"))
                    .font(Font.custom("Rubik",size: 13))
                    .fontWeight(.semibold)
                    .padding(.trailing, 60)
                
                
               
            }
            
            
            // Botão Login
            Button(action: {
                irHome = true
            }) {
                Text("Entrar")
                    .foregroundColor(.white)
                    .frame(width: 250)
                    .padding(15)
                    .background(Color("corPrincipal"))
                    .cornerRadius(10)
                    .font(Font.custom("Rubik",size: 20))
                    .fontWeight(.bold)
                    
            }
            .padding(.horizontal, 35)
            .padding(.top, 10)
            .navigationDestination(isPresented: $irHome){
                TelaPrincipal()
            }
            
            
            // Criar conta
            VStack {
                Text("Ainda não tem conta?")
                    
                    .foregroundColor(.gray)
                    .font(Font.custom("Rubik",size: 13))
                Button(action: {
                    irCriarConta = true
                }) {
                    Text("Criar conta")
                        .foregroundColor(Color("corPrincipal"))
                        .bold()
                        .font(.footnote)
                }
                .navigationDestination(isPresented: $irCriarConta){
                    CriarConta()
                }
               
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
