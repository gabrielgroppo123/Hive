//
//  CriarConta.swift
//  hive
//
//  Created by GABRIEL GROPPO on 06/04/26.
//

import SwiftUI
//@available(*, deprecated)

struct CriarConta: View {
    @Environment(\.dismiss) var dismiss
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
    @State var irPin: Bool = false
    
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
            //            //SetaVoltar
            //            Button(action: { irLogin = true }) {
            //                Image("seta voltar")
            //            }
            //            .buttonStyle(.plain)
            //            .navigationDestination(isPresented: $irLogin) {
            //                TelaLogin()
            //            }
            //            .frame(maxWidth: .infinity, alignment: .leading)
            //            .padding(.leading, 35)
            //            .padding(.bottom, 25)
            //            .padding(.top, 50)
            
            //Criar Conta
            Text("Criar Conta")
                .font(.custom("Parkinsans", size: 40))
                .fontWeight(.bold)
                .foregroundColor(
                    Color("corPrincipal"))
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
                .font(Font.custom("Rubik", size: 17))
            
            // Campo CPF
            TextField("CPF", text: $cpf)
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
                .keyboardType(.numberPad)
                .textInputAutocapitalization(.never)
                .font(Font.custom("Rubik", size: 17))
            
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
                .font(Font.custom("Rubik", size: 17))
            // Campo Telefone
            TextField("Número de telefone", text: $telefone)
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
                .keyboardType(.numberPad)
                .textInputAutocapitalization(.never)
                .font(Font.custom("Rubik", size: 17))
                .onChange(of: telefone) { newValue in
                    telefone = formatarTelefone(newValue)
                }
            // Campo datanascimento
            Button(action: { mostrarDatePicker = true }) {
                HStack {
                    Text(dataNascimento == nil ? "Data de Nascimento" : dataNascimento!.formatted(date: .numeric, time: .omitted))
                        .foregroundColor(dataNascimento == nil ? Color(.systemGray2) : .black)
                    Spacer()
                }
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
                .font(Font.custom("Rubik", size: 17))
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
                    .tint(Color("corPrincipal"))
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
                    .background(Color("corPrincipal"))
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
                    Image(mostrarSenha ? "olhoCinza" : "olhoFechadoCinza")
                    
                }
            }
            .padding(10)
            .background(Color(.lightGray).opacity(0.25))
            .cornerRadius(10)
            .padding(.horizontal, 35)
            .frame(width: 400)
            .font(Font.custom("Rubik", size: 17))
            
            // Campo Chave Pix
            Button(action: { mostrarChavePix = true }) {
                HStack {
                    Text(chavePix == nil ? "Selecionar Chave Pix" : chavePix!)
                        .foregroundColor(chavePix == nil ? Color(.systemGray2) : .black)
                    Spacer()
                }
                .padding(10)
                .background(Color(.lightGray).opacity(0.25))
                .cornerRadius(10)
                .padding(.horizontal, 35)
                .frame(width: 400)
                .font(Font.custom("Rubik", size: 17))
            }
            .buttonStyle(.plain)
            .sheet(isPresented: $mostrarChavePix) {
                VStack {
                    Text("Selecionar Chave Pix")
                        .font(Font.custom("Parkinsans", size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(Color("corPrincipal"))
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
                    .tint(Color("corPrincipal"))
                    
                    Button("Confirmar") {
                        if chavePix == nil { chavePix = "Telefone" }
                        mostrarChavePix = false
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 12)
                    .background(Color("corPrincipal"))
                    .cornerRadius(10)
                    .padding(.bottom, 30)
                }
                .presentationDetents([.fraction(0.4)])
            }
            
            // Botão Proximo
            Button(action: {
                irPin = true
            }) {
                Text("Próximo")
                    .foregroundColor(.white)
                    .frame(width: 100, height: 15)
                    .padding(15)
                    .background(Color("corPrincipal"))
                    .cornerRadius(10)
                    .font(Font.custom("Rubik",size: 18))
                    .fontWeight(.bold)
                
            }
            .padding(.trailing, 35)
            .padding(.top, 10)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .navigationDestination(isPresented: $irPin){
                DefinirPin()
            }
            
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
    CriarConta()
}
