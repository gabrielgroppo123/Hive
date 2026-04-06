//
//  Carteira.swift
//  hive
//
//  Created by GABRIEL GROPPO on 01/04/26.
//

import SwiftUI

struct Carteira: View {
    var body: some View {
        ZStack {
            // Fundo gradiente com bordas arredondadas
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.97, green: 0.21, blue: 0.43), location: 0.00),
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
                        .fontWeight(.regular)
                    Spacer()
                    Image("olhinho")
                }
                .padding(.horizontal, 30)

                Text("R$ 1.000,00")
                    .foregroundColor(.white)
                    .font(Font.custom("Parkinsans", size: 40))
                    .padding(.horizontal, 30)
                    .padding(.top, 8)
                    .fontWeight(.semibold)

                // Barrinha separadora
                Rectangle()
                    .foregroundColor(Color(red: 0.97, green: 0.42, blue: 0.54).opacity(0.6))
                    .frame(height: 2)
                    .padding(.horizontal, 30)
                    .padding(.top, 35)
                    .padding(.bottom, 24)

                // Extrato
                Text("Extrato")
                    .foregroundColor(.white)
                    .font(Font.custom("Parkinsans", size: 32))
                    .fontWeight(.bold)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 30)

                // Transações
                VStack(spacing: 20) {
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Transação")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.custom("Parkinsans", size: 21))
                            Text("Destino")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("Valor")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.custom("Parkinsans", size: 21))
                            Text("Data")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                    }
                    .padding(.horizontal, 30)
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Transação")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.custom("Parkinsans", size: 21))
                            Text("Destino")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("Valor")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.custom("Parkinsans", size: 21))
                            
                            Text("Data")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                    }
                    .padding(.horizontal, 30)
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Transação")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.custom("Parkinsans", size: 21))
                            Text("Destino")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 4) {
                            Text("Valor")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(Font.custom("Parkinsans", size: 21))
                            Text("Data")
                                .foregroundColor(.white)
                                .font(Font.custom("Parkinsans", size: 18))
                        }
                    }
                    .padding(.horizontal, 30)
                }

                Spacer()
            }
            .frame(width: 393, height: 897)
        }
        .frame(width: 393, height: 897)
    }
}

#Preview {
    Carteira()
}
