//
//  TelaPix.swift
//  hive
//
//  Created by GABRIEL GROPPO on 02/04/26.
//

import SwiftUI

struct TelaPix: View {
    @State var irHome: Bool = false
    var body: some View {
        NavigationStack {
            ZStack{
                //SetaVoltar
                Button(action: { irHome = true }) {
                    Image("seta voltar")
                }
                .offset(x: -150, y: -320)
                .buttonStyle(.plain)
                .navigationDestination(isPresented: $irHome) {
                    TelaPrincipal()
                }
                //Olá Fulano
                Text("Área Pix")
                    .font(Font.custom(  "Parkinsans", size: 40))
                    .offset(x: -60, y: -230)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .frame(width: 200, height: 70, alignment: .topLeading)
                
                // Botão QRCode
                Button(action: {
                    irHome = true
                }) {
                    Text("QR Code")
                        .foregroundColor(.white)
                        .frame(width: 290, alignment: .topLeading)
                        .padding(15)
                        .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                        .cornerRadius(10)
                        .font(Font.custom("Parkinsans",size: 20))
                        
                }
                .offset(x: 0, y: -150)
                .navigationDestination(isPresented: $irHome){
                    TelaPrincipal()
                }
                
                // Botão Copia e Cola
                Button(action: {
                    irHome = true
                }) {
                    Text("Copia e Cola")
                        .foregroundColor(.white)
                        .frame(width: 290, alignment: .topLeading)
                        .padding(15)
                        .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                        .cornerRadius(10)
                        .font(Font.custom("Parkinsans",size: 20))
                        
                }
                .offset(x: 0, y: -60)
                .navigationDestination(isPresented: $irHome){
                    TelaPrincipal()
                }
                // Botão Chave Pix
                Button(action: {
                    irHome = true
                }) {
                    Text("Chave Pix")
                        .foregroundColor(.white)
                        .frame(width: 290, alignment: .topLeading)
                        .padding(15)
                        .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                        .cornerRadius(10)
                        .font(Font.custom("Parkinsans",size: 20))
                        
                }
                .offset(x: 0, y: 30)
                .navigationDestination(isPresented: $irHome){
                    TelaPrincipal()
                }
                
                //Favoritos
                Text("Favoritos")
                    .font(Font.custom("Parkinsans",size: 18))
                    .foregroundColor(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .offset(x: -110, y: 130)
                
                //Nome Fulano
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 150, height: 158)
                  .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                  .cornerRadius(10)
                  .offset(x: -81, y: 240)
                Text("Nome")
                    .font(Font.custom("Parkinsans",size: 25))
                    .offset(x: -100, y: 190)
                Text("Fulano")
                    .font(Font.custom("Parkinsans",size: 25))
                    .offset(x: -95, y: 220)
                Text("Banco")
                    .font(Font.custom("Parkinsans",size: 12))
                    .offset(x: -115, y: 260)
                Text("000.000.000-00")
                    .font(Font.custom("Parkinsans",size: 12))
                    .offset(x: -88, y: 275)
                
                //Nome Fulano
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 150, height: 158)
                  .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                  .cornerRadius(10)
                  .offset(x: 81, y: 240)
                Text("Nome")
                    .font(Font.custom("Parkinsans",size: 25))
                    .offset(x: 60, y: 190)
                Text("Fulano")
                    .font(Font.custom("Parkinsans",size: 25))
                    .offset(x: 65, y: 220)
                Text("Banco")
                    .font(Font.custom("Parkinsans",size: 12))
                    .offset(x: 45, y: 260)
                Text("000.000.000-00")
                    .font(Font.custom("Parkinsans",size: 12))
                    .offset(x: 72, y: 275)
                
                //Tres Bolinhas
                Image("bolinha clara")
                    .frame(width: 7.5, height: 7.5)
                    .offset(x: 0, y: 340)
                Image("bolinha clara")
                    .frame(width: 7.5, height: 7.5)
                    .offset(x: 10, y: 340)
                Image("bolinha")
                    .frame(width: 7.5, height: 7.5)
                    .offset(x: -10, y: 340)
                
                .navigationBarHidden(true)
            }}}
}

#Preview {
    TelaPix()
}
