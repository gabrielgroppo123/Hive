//
//  CriarConta.swift
//  hive
//
//  Created by GABRIEL GROPPO on 06/04/26.
//

import SwiftUI

struct CriarConta: View {
    @State var irLogin: Bool = false
    @State var nome: String = ""
    @State var dataNascimento: Date = Date()
    @State var mostrarDatePicker: Bool = false
    var body: some View {
        VStack {
            //SetaVoltar
            Button(action: { irLogin = true }) {
                Image("seta voltar")
            }
            .buttonStyle(.plain)
            .navigationDestination(isPresented: $irLogin) {
                TelaLogin()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 35)
            .padding(.bottom, 25)
            
            Text("Criar Conta")
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
            
            // Campo nome
            TextField("Nome Completo", text: $nome)
                .padding(10)
                .background(Color(.lightGray).opacity(0.5))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            // Campo cpf
            TextField("CPF", text: $nome)
                .padding(10)
                .background(Color(.lightGray).opacity(0.5))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            // Campo email
            TextField("E-mail", text: $nome)
                .padding(10)
                .background(Color(.lightGray).opacity(0.5))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            // Campo telefone
            TextField("Número de telefone", text: $nome)
                .padding(10)
                .background(Color(.lightGray).opacity(0.5))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            // Campo datanascimento
            Button(action: { mostrarDatePicker = true }) {
                HStack {
                    Text(dataNascimento == Date() ? "DD/MM/AAAA" : dataNascimento.formatted(date: .numeric, time: .omitted))
                        .foregroundColor(dataNascimento == Date() ? Color(.lightGray) : .black)
                    Spacer()
                }
                .padding(10)
                .background(Color(.lightGray).opacity(0.5))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $mostrarDatePicker) {
                VStack {
                    DatePicker(
                        "Data de Nascimento",
                        selection: $dataNascimento,
                        displayedComponents: .date
                    )
                    .datePickerStyle(.graphical)
                    .tint(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .padding()
                    
                    Button("Confirmar") {
                        mostrarDatePicker = false
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 12)
                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .cornerRadius(10)
                    .padding(.bottom, 30)
                }
                .presentationDetents([.medium])
            }
            // Campo senha
            TextField("Senha", text: $nome)
                .padding(10)
                .background(Color(.lightGray).opacity(0.5))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            // Campo chavepix
            TextField("Chave Pix", text: $nome)
                .padding(10)
                .background(Color(.lightGray).opacity(0.5))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            
            // Botão Login
            Button(action: {
                irLogin = true
            }) {
                Text("Próximo")
                    .foregroundColor(.white)
                    .frame(width: 100, height: 15)
                    .padding(15)
                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .cornerRadius(10)
                    .font(Font.custom("Parkinsans",size: 18))
                    .fontWeight(.bold)
                    
            }
            .padding(.trailing, 35)
            .padding(.top, 10)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .navigationDestination(isPresented: $irLogin){
                TelaPrincipal()
            }
            Spacer()
        }
        .padding(.top, 50)}
}

#Preview {
    CriarConta()
}
