//
//  TelaPrincipal.swift
//  hive
//
//  Created by GABRIEL GROPPO on 31/03/26.
//

import SwiftUI

struct TelaPrincipal: View {
    @State private var offsetCarteira: CGFloat = 0
    @State private var mostrarCarteira: Bool = false

    var body: some View {
        ZStack {
            //Olá Fulano
            Text("Olá,")
                .font(Font.custom("Parkinsans", size: 30.08612))
                .offset(x: -95, y: -310)
                .foregroundColor(Color(red: 0.96, green: 0.14, blue: 0.37))
                .frame(width: 143, height: 70, alignment: .topLeading)
            Text("Fulano")
                .font(Font.custom("Parkinsans", size: 30.1))
                .offset(x: -95, y: -278)
                .foregroundColor(Color(red: 0.96, green: 0.14, blue: 0.37))
                .frame(width: 143, height: 70, alignment: .topLeading)
                .fontWeight(.bold)
            
            //Perfil
            Image("user")
                .offset(x: 150, y: -310)
            
            //Cartoes
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 243, height: 142)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.97, green: 0.21, blue: 0.43), location: 0.00),
                            Gradient.Stop(color: Color(red: 1, green: 0.55, blue: 0.65), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.42, y: 0.14),
                        endPoint: UnitPoint(x: 0.96, y: 1)
                    )
                )
                .cornerRadius(18.80383)
                .offset(x: -50, y: -180)
            Text("Cartões")
                .foregroundColor(.white)
                .offset(x: -120, y: -135)
                .font(Font.custom("Parkinsans", size: 20.1))
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 129, height: 142)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.97, green: 0.21, blue: 0.43), location: 0.00),
                            Gradient.Stop(color: Color(red: 1, green: 0.55, blue: 0.65), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0.14, y: 0.25),
                        endPoint: UnitPoint(x: 1, y: 1)
                    )
                )
                .cornerRadius(18.80383)
                .offset(x: 165, y: -180)
            
            //Tres Bolinhas
            Image("bolinha clara")
                .frame(width: 7.52153, height: 7.52153)
                .offset(x: 0, y: -80)
            Image("bolinha clara")
                .frame(width: 7.52153, height: 7.52153)
                .offset(x: 10, y: -80)
            Image("bolinha")
                .frame(width: 7.52153, height: 7.52153)
                .offset(x: -10, y: -80)
            
            //Secao dos icones
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 393, height: 510)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                .offset(x: 0, y: 200)
            
            //Pix
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 90.25837, height: 90.25837)
                .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                .cornerRadius(9.40191)
                .offset(x: -120, y: 30)
                .shadow(radius: 5, x: 4, y: 4)
            Image("icone pix")
                .offset(x: -120, y: 16)
            Text("Pix")
                .offset(x: -120, y: 53)
            
            //Boleto
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 90.25837, height: 90.25837)
                .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                .cornerRadius(9.40191)
                .offset(x: 0, y: 30)
                .shadow(radius: 5, x: 4, y: 4)
            Image("icone boleto")
                .offset(x: 0, y: 16)
            Text("Boleto")
                .offset(x: 0, y: 53)
            
            //Investir
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 90.25837, height: 90.25837)
                .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                .cornerRadius(9.40191)
                .offset(x: 120, y: 30)
                .shadow(radius: 5, x: 4, y: 4)
            Image("icone investir")
                .offset(x: 120, y: 16)
            Text("Investir")
                .offset(x: 120, y: 53)
            
            //Caixinha
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 90.25837, height: 90.25837)
                .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                .cornerRadius(9.40191)
                .offset(x: -120, y: 150)
                .shadow(radius: 5, x: 4, y: 4)
            Image("icone caixinha")
                .offset(x: -120, y: 136)
            Text("Caixinha")
                .offset(x: -120, y: 173)
            
            //Recarga
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 90.25837, height: 90.25837)
                .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                .cornerRadius(9.40191)
                .offset(x: 0, y: 150)
                .shadow(radius: 5, x: 4, y: 4)
            Image("icone recarga")
                .offset(x: 0, y: 136)
            Text("Recarga")
                .offset(x: 0, y: 173)
            
            //Seguro
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 90.25837, height: 90.25837)
                .background(Color(red: 0.92, green: 0.92, blue: 0.92))
                .cornerRadius(9.40191)
                .offset(x: 120, y: 150)
                .shadow(radius: 5, x: 4, y: 4)
            Image("icone seguro")
                .offset(x: 120, y: 136)
            Image("check")
                .offset(x: 120, y: 136)
            Text("Seguro")
                .offset(x: 120, y: 173)
            
            //Carteira com gesto de arrastar
            Carteira()
                .offset(y: 615 + offsetCarteira)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            if value.translation.height < 0 {
                                offsetCarteira = value.translation.height
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                if value.translation.height < -80 {
                                    offsetCarteira = -630  // abre totalmente
                                } else {
                                    offsetCarteira = 0     // volta pro lugar
                                }
                            }
                        }
                )
        }
        .frame(width: 393, height: 851.81342)
        .background(.white)
        .onAppear {
            for family in UIFont.familyNames {
                for font in UIFont.fontNames(forFamilyName: family) {
                    print(font)
                }
            }
        }
    }
}

#Preview {
    TelaPrincipal()
}
