//
//  DefinirPin.swift
//  hive
//
//  Created by GABRIEL GROPPO on 08/04/26.
//

import SwiftUI

struct DefinirPin: View {
    @State var irCriarConta: Bool = false
    @State var pin: [String] = ["","","",""]
    @FocusState var campoAtivo: Int?
    var body: some View {
        VStack(alignment: .leading) {
            Button(action:{
                irCriarConta = true
            }) {
                Image("seta voltar")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 35)
                    .padding(.top, 50)
            }.navigationDestination(isPresented:$irCriarConta){
                CriarConta()
            }
            // Título
            Text("Defina seu PIN para\nrealizar pagamento")
                            .font(Font.custom("Parkinsans", size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color("corPrincipal"))
                            .padding(.leading, 35)
                            .padding(.bottom, 40)
                        
                        // Quadrados do PIN
                        HStack(spacing: 16) {
                            ForEach(0..<4) { i in
                                ZStack {
                                    // Quadrado visual
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(.systemGray5))
                                        .frame(width: 70, height: 85)
                                    
                                    // Número digitado
                                    Text(pin[i])
                                        .font(.title)
                                        .fontWeight(.bold)
                                    
                                    // TextField invisível por cima
                                    TextField("", text: $pin[i])
                                        .keyboardType(.numberPad)
                                        .focused($campoAtivo, equals: i)
                                        .opacity(0.01) // invisível mas clicável
                                        .frame(width: 70, height: 85)
                                        .onChange(of: pin[i]) { newValue in
                                            // só aceita 1 número
                                            if newValue.count > 1 {
                                                pin[i] = String(newValue.last!)
                                            }
                                            // avança pro próximo campo
                                            if newValue.count == 1 && i < 3 {
                                                campoAtivo = i + 1
                                            }
                                            // só aceita número
                                            pin[i] = newValue.filter { $0.isNumber }
                                        }
                                }
                                .onTapGesture {
                                    campoAtivo = i
                                }
                            }
                        }
                        .padding(.horizontal, 35)
                        .padding(.bottom, 50)
                        
                        // Botão Criar Conta
                        Button(action: { }) {
                            Text("Criar conta")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.custom("Parkinsans", size: 18))
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 18)
                                .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                                .cornerRadius(14)
                        }
                        .padding(.horizontal, 35)
                        
                    .padding(.top, 60)
                    .onAppear {
                        campoAtivo = 0 // abre o teclado no primeiro campo
                    }
            Spacer()
        }
        Spacer()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DefinirPin()
}
