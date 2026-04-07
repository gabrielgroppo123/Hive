//
//  CriarConta.swift
//  hive
//
//  Created by GABRIEL GROPPO on 06/04/26.
//

import SwiftUI
@available(*, deprecated)
struct CriarConta: View {
    @State var irLogin: Bool = false
    @State var irHome: Bool = false
    @State var nome: String = ""
    @State var dataNascimento: Date? = nil
    @State var mostrarDatePicker: Bool = false
    @State var senha: String = ""
    @State var cpf: String = ""
    @State var email: String = ""
    @State var mostrarChavePix: Bool = false
    @State var chavePix: String? = nil
    @State var telefone: String = ""
    @State var mostrarSenha: Bool = false
    
    func formatarTelefone(_ value: String) -> String {
       
        let numeros = value.filter { $0.isNumber }
        
       
        let limitado = String(numeros.prefix(11))
        
        var resultado = ""
        for (i, char) in limitado.enumerated() {
            if i == 0 { resultado += "(" }
            if i == 2 { resultado += ") " }
            if i == 7 { resultado += "-" }
            resultado += String(char)
        }
        return resultado
    }

    func formatarCPF(_ value: String) -> String {
      
        let numeros = value.filter { $0.isNumber }
        
        
        let limitado = String(numeros.prefix(11))
        
        var resultado = ""
        for (i, char) in limitado.enumerated() {
            if i == 3 { resultado += "." }
            if i == 6 { resultado += "." }
            if i == 9 { resultado += "-" }
            resultado += String(char)
        }
        return resultado
    }
    
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
            
            //Criar Conta
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
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            // Campo CPF
            TextField("CPF", text: $cpf)
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
                .keyboardType(.numberPad)
                .textInputAutocapitalization(.never)
                
                .onChange(of: cpf) { newValue in
                    cpf = formatarCPF(newValue)
                }
            // Campo email
            TextField("E-mail", text: $email)
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
                .textInputAutocapitalization(.never)
            // Campo Telefone
            TextField("Número de telefone", text: $telefone)
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
                .keyboardType(.numberPad) // só abre teclado numérico
                .textInputAutocapitalization(.never)
                .onChange(of: telefone) { newValue in
                    telefone = formatarTelefone(newValue)
                }
            // Campo datanascimento
            Button(action: { mostrarDatePicker = true }) {
                HStack {
                    Text(dataNascimento == nil ? "Data de Nascimento" : dataNascimento!.formatted(date: .numeric, time: .omitted))
                        .foregroundColor(dataNascimento == nil ? Color(.lightGray) : .black)
                    Spacer()
                }
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $mostrarDatePicker) {
                VStack {
                    DatePicker(
                        "Data de Nascimento",
                        selection: Binding(
                            get: { dataNascimento ?? Date() },
                            set: { dataNascimento = $0 }
                        ),
                        displayedComponents: .date
                    )
                    .datePickerStyle(.graphical)
                    .tint(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .padding()
                    
                    Button("Confirmar") {
                        if dataNascimento == nil {
                            dataNascimento = Date() // salva a data atual se não escolheu nada
                        }
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
            
            
            // Campo Senha
            HStack {
                if mostrarSenha {
                    TextField("Senha", text: $senha)
                        .textInputAutocapitalization(.never)
                } else {
                    SecureField("Senha", text: $senha)
                }
                
                Button(action: { mostrarSenha.toggle() }) {
                    Image(systemName: mostrarSenha ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
            }
            .padding(10)
            .background(Color(.lightGray).opacity(0.25))
            .cornerRadius(10)
            .padding(.horizontal, 35)
            .frame(width: 400)
            
            // Campo Chave Pix
            Button(action: { mostrarChavePix = true }) {
                HStack {
                    Text(chavePix == nil ? "Selecionar Chave Pix" : chavePix!)
                        .foregroundColor(chavePix == nil ? Color(.lightGray) : .black)
                    Spacer()
                }
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $mostrarChavePix) {
                VStack {
                    Text("Selecionar Chave Pix")
                        .font(Font.custom("Parkinsans", size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 247/255, green: 54/255, blue: 109/255))
                        .padding(.top, 30)
                    
                    Picker("Chave Pix", selection: Binding(
                        get: { chavePix ?? "Telefone" },
                        set: { chavePix = $0 }
                    )) {
                        Text("Telefone").tag("Telefone")
                        Text("Email").tag("Email")
                        Text("CPF").tag("CPF")
                    }
                    .pickerStyle(.wheel)
                    .tint(Color(red: 247/255, green: 54/255, blue: 109/255))
                    
                    Button("Confirmar") {
                        if chavePix == nil { chavePix = "Telefone" }
                        mostrarChavePix = false
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 12)
                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .cornerRadius(10)
                    .padding(.bottom, 30)
                }
                .presentationDetents([.fraction(0.4)])
            }
            
            // Botão Proximo
            Button(action: {
                irHome = true
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
            .navigationDestination(isPresented: $irHome){
                TelaPrincipal()
            }
            Spacer()
        }
        .padding(.top, 50)
        .ignoresSafeArea(.keyboard)
    }
    
}

#Preview {
    CriarConta()
}
