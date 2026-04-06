//
//  TelaPix.swift
//  hive
//
//  Created by GABRIEL GROPPO on 02/04/26.
//

import SwiftUI

struct TelaPix: View {
    @State var irHome: Bool = false
    @State var irQRCode: Bool = false
    var body: some View {
        NavigationStack {
            ZStack{
                VStack{
                    HStack{
                        VStack{
                            //SetaVoltar
                            Button(action: { irHome = true }) {
                                Image("seta voltar")
                            }
                            .buttonStyle(.plain)
                            .navigationDestination(isPresented: $irHome) {
                                TelaPrincipal()
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 35)
                            .padding(.bottom, 25)
                            
                            //Olá Fulano
                            Text("Área Pix")
                                .font(Font.custom(  "Parkinsans", size: 40))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                                .padding(.bottom, 25)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                            
                            // Botão QRCode
                            Button(action: {
                                irQRCode = true
                            }) {
                                Text("QR Code")
                                    .foregroundColor(.white)
                                    .frame(width: 300, alignment: .topLeading)
                                    .padding(15)
                                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                                    .cornerRadius(10)
                                    .font(Font.custom("Parkinsans",size: 20))
                                
                            }
                            
                            .navigationDestination(isPresented: $irQRCode){
                                LerQRCode()
                            }
                            .padding(.bottom, 5)
                            // Botão Copia e Cola
                            Button(action: {
                                irHome = true
                            }) {
                                Text("Copia e Cola")
                                    .foregroundColor(.white)
                                    .frame(width: 300, alignment: .topLeading)
                                    .padding(15)
                                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                                    .cornerRadius(10)
                                    .font(Font.custom("Parkinsans",size: 20))
                                
                            }
                            
                            .navigationDestination(isPresented: $irHome){
                                TelaPrincipal()
                            }
                            .padding(.bottom, 5)
                            // Botão Chave Pix
                            Button(action: {
                                irHome = true
                            }) {
                                Text("Chave Pix")
                                    .foregroundColor(.white)
                                    .frame(width: 300, alignment: .topLeading)
                                    .padding(15)
                                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                                    .cornerRadius(10)
                                    .font(Font.custom("Parkinsans",size: 20))
                                
                            }
                            .navigationDestination(isPresented: $irHome){
                                TelaPrincipal()
                            }
                            
                        }
                        
                        
                    }
                    .padding(.bottom, 40)
                    
                    HStack{
                        VStack(){
                            //Favoritos
                            Text("Favoritos")
                                .font(Font.custom("Parkinsans",size: 18))
                                .foregroundColor(Color(red: 247/255, green: 54/255, blue: 109/255))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                                .padding(.bottom, 15)
                                .padding(.top, 30)
                            
                            HStack{
                                ZStack(alignment: .topLeading){
                                    
                                    //Nome Fulano
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 150, height: 158)
                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                        .cornerRadius(10)
                                    VStack(alignment: .leading){
                                        Text("Nome")
                                            .font(Font.custom("Parkinsans",size: 25))
                                            .fontWeight(.bold)
                                        
                                        Text("Fulano")
                                            .font(Font.custom("Parkinsans",size: 25))
                                            .fontWeight(.bold)
                                            .padding(.bottom, 5)
                                        
                                        Text("Banco")
                                            .font(Font.custom("Parkinsans",size: 12))
                                        
                                        Text("000.000.000-00")
                                            .font(Font.custom("Parkinsans",size: 12))
                                    }
                                    .padding(.leading, 15)
                                    .padding(.top, 15)
                                }
                                .padding(.trailing, 10)
                                
                                ZStack(alignment: .topLeading){
                                    //Nome Fulano
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 150, height: 158)
                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                        .cornerRadius(10)
                                    VStack(alignment: .leading){
                                        Text("Nome")
                                            .font(Font.custom("Parkinsans",size: 25))
                                            .fontWeight(.bold)
                                        
                                        Text("Fulano")
                                            .font(Font.custom("Parkinsans",size: 25))
                                            .fontWeight(.bold)
                                            .padding(.bottom, 5)
                                        
                                        Text("Banco")
                                            .font(Font.custom("Parkinsans",size: 12))
                                        
                                        Text("000.000.000-00")
                                            .font(Font.custom("Parkinsans",size: 12))
                                    }
                                    .padding(.leading, 15)
                                    .padding(.top, 15)
                                }
                            }
                            HStack{
                                //Tres Bolinhas
                                Image("bolinha")
                                    .frame(width: 7.5, height: 7.5)
                                
                                Image("bolinha clara")
                                    .frame(width: 7.5, height: 7.5)
                                
                                Image("bolinha clara")
                                    .frame(width: 7.5, height: 7.5)
                                
                                    .navigationBarHidden(true)
                            }
                            .padding(.top, 15)
                        }}
                }}}
    }
}
#Preview {
    TelaPix()
}
