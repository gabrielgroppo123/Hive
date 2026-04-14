//
//  Carteira.swift
//  hive
//
//  Created by GABRIEL GROPPO on 01/04/26.
//

import SwiftUI

struct Carteira: View {
    @State var mostrarSaldo: Bool = false
    
    var body: some View {
        ZStack {
            // Fundo gradiente
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color("corPrincipal"), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.97, green: 0.42, blue: 0.54), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0.35),
                endPoint: UnitPoint(x: 0.94, y: 0.81)
            )
            .frame(width: 393, height: 897)
            .cornerRadius(43)
            .padding(.top, 230)
            
            VStack(alignment: .leading, spacing: 0) {

                // Barrinha de arrastar
                HStack {
                    Spacer()
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 102, height: 2)
                    Spacer()
                }
                .padding(.top, 126)
                .padding(.bottom, 24)

                // Saldo
                HStack {
                    Text("Saldo")
                        .foregroundColor(.white)
                        .font(Font.custom("Parkinsans", size: 22))
                    Spacer()
                    Button(action: { mostrarSaldo.toggle() }) {
                        Image(mostrarSaldo ? "olhoAberto" : "olhoFechado")
                    }
                }
                .padding(.horizontal, 35)

                Text(mostrarSaldo ? "R$ 1.000,00" : "R$ ••••••")
                    .foregroundColor(.white)
                    .font(Font.custom("Parkinsans", size: 40))
                    .padding(.horizontal, 35)
                    .padding(.top, 8)
                    .fontWeight(.semibold)

                // Barrinha separadora
                Rectangle()
                    .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.54).opacity(0.6))
                    .frame(height: 2)
                    .padding(.horizontal, 35)
                    .padding(.top, 35)
                    .padding(.bottom, 24)

                // Extrato
                Text("Extrato")
                    .foregroundColor(.white)
                    .font(Font.custom("Parkinsans", size: 32))
                    .fontWeight(.semibold)
                    .padding(.horizontal, 35)
                    .padding(.bottom, 30)

                // Transações
                VStack(spacing: 30) {
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Pix")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .font(Font.custom("Parkinsans", size: 20))
                            Text("Gabriel Groppo")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("+ R$250,00")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .font(Font.custom("Parkinsans", size: 20))
                            Text("15/04/26")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                    }
                    .padding(.horizontal, 35)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Boleto")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .font(Font.custom("Rubik", size: 20))
                            Text("São José Restaurante")
                                .foregroundColor(.white)
                                .font(Font.custom("Rubik", size: 18))
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("- R$62,89")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .font(Font.custom("Rubik", size: 20))
                            Text("02/01/26")
                                .foregroundColor(.white)
                                .font(Font.custom("Rubik", size: 18))
                        }
                    }
                    .padding(.horizontal, 35)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Pix")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .font(Font.custom("Rubik", size: 20))
                            Text("Ana Clara Fornazier")
                                .foregroundColor(.white)
                                .font(Font.custom("Rubik", size: 18))
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("- R$1.200,00")
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .font(Font.custom("Rubik", size: 20))
                            Text("13/12/25")
                                .foregroundColor(.white)
                                .font(Font.custom("Rubik", size: 18))
                        }
                    }
                    .padding(.horizontal, 35)
                }

                Spacer()
            }.padding(.horizontal, 10
            )
            
            // ← VStack fecha aqui
            .frame(width: 393, height: 897)
        }  // ← ZStack fecha aqui
        .frame(width: 393, height: 897)
    }
}

#Preview {
    Carteira()
}
