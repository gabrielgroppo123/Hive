//
//  Carteira.swift
//  hive
//
//  Created by GABRIEL GROPPO on 01/04/26.
//

import SwiftUI

struct Carteira: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 393, height: 897)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.97, green: 0.21, blue: 0.43), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.97, green: 0.42, blue: 0.54), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.5, y: 0.35),
                        endPoint: UnitPoint(x: 0.94, y: 0.81)
                    )
                )
                .cornerRadius(43.24739)
                .offset(x: 0, y: 80)
            
            //Barrinha de arrastar
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 102, height: 2)
                .background(.white)
                .offset(x: 0, y: -350)
            //Informacoes
            Text("Saldo")
                .offset(x: -140, y: -310)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 22))
            Text("R$1.000,00")
                .offset(x: -70, y: -265)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 40))
            Image("olhinho")
                .offset(x: 160, y: -306)
            
            //Barrinha cinza
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 333, height: 1.96579)
              .background(Color(red: 0.97, green: 0.42, blue: 0.54))
              .background(Color(red: 0.46, green: 0.46, blue: 0.46))
              .offset(x: 0, y: -200)
            
            //Extrato
            Text("Extrato")
                .offset(x: -110, y: -130)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 30))
                .fontWeight(.bold)
            
            //Transacoes
            Text("Transação")
                .offset(x: -110, y: -80)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 21))
            Text("Transação")
                .offset(x: -110, y: 20)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 21))
            Text("Transação")
                .offset(x: -110, y: 120)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 21))

            //Destinos
            Text("Destino")
                .offset(x: -130, y: -50)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 18))
            Text("Destino")
                .offset(x: -130, y: 50)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 18))
            Text("Destino")
                .offset(x: -130, y: 150)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 18))
            
            //Valores
            Text("Valor")
                .offset(x: 140, y: -80)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 21))
            Text("Valor")
                .offset(x: 140, y: 20)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 21))
            Text("Valor")
                .offset(x: 140, y: 120)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 21))
            
            //Datas
            Text("Data")
                .offset(x: 145, y: -50)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 18))
            Text("Data")
                .offset(x: 145, y: 50)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 18))
            Text("Data")
                .offset(x: 145, y: 150)
                .foregroundColor(.white)
                .font(Font.custom("Parkinsans", size: 18))
        }
    }
}

#Preview {
    Carteira()
}
