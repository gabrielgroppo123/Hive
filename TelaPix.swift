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
                            .padding(.top, 50)
                            
                            
                            //Olá Fulano
                            Text("Área Pix")
                                .font(Font.custom(  "Parkinsans", size: 40))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                                .padding(.bottom, 25)
                                .foregroundColor(.primary)
                                .fontWeight(.bold)
                            
                            // Botão QRCode
                            Button(action: {
                                irQRCode = true
                            }) {
                                ZStack{
                                    Text("QR Code")
                                        .padding(.leading, 32)
                                        .foregroundColor(.white)
                                        .frame(width: 300, alignment: .leading)
                                        .padding(15)
                                        .background(Color("corPrincipal"))
                                        .cornerRadius(10)
                                        .font(Font.custom("Rubik",size: 20))
                                    
                                    Image("qrcode")
                                        .padding(.trailing, 280)
                                }
                            }
                            
                            .navigationDestination(isPresented: $irQRCode){
                                LerQRCode()
                            }
                            .padding(.bottom, 5)
                            // Botão Copia e Cola
                            Button(action: {
                                irHome = true
                            }) {
                                ZStack{
                                    Text("Copia e Cola")
                                        .padding(.leading, 32)
                                        .foregroundColor(.white)
                                        .frame(width: 300, alignment: .leading)
                                        .padding(15)
                                        .background(Color("corPrincipal"))
                                        .cornerRadius(10)
                                        .font(Font.custom("Rubik",size: 20))
                                    
                                    Image("copy")
                                        .padding(.trailing, 280)
                                }
                                
                            }
                            
                            .navigationDestination(isPresented: $irHome){
                                TelaPrincipal()
                            }
                            .padding(.bottom, 5)
                            // Botão Chave Pix
                            Button(action: {
                                irHome = true
                            }) {
                                ZStack{
                                    Text("Chave Pix")
                                        .padding(.leading, 32)
                                        .foregroundColor(.white)
                                        .frame(width: 300, alignment: .leading)
                                        .padding(15)
                                        .background(Color("corPrincipal"))
                                        .cornerRadius(10)
                                        .font(Font.custom("Rubik",size: 20))
                                    
                                    Image("chave")
                                        .padding(.trailing, 280)
                                }
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
                                .font(Font.custom("Rubik",size: 18))
                                .foregroundColor(Color("corPrincipal"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                                .padding(.bottom, 15)
                                .padding(.top, 30)
                                .fontWeight(.semibold)
                            
                            HStack{
                                ZStack(alignment: .topLeading){
                                    
                                    //Nome Fulano
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 150, height: 158)
                                        .background(Color(.lightGray).opacity(0.4))
                                        .cornerRadius(10)
                                    VStack(alignment: .leading){
                                        Text("João")
                                            .font(Font.custom("Rubik",size: 25))
                                            .fontWeight(.semibold)
                                        
                                        Text("Pedro")
                                            .font(Font.custom("Rubik",size: 25))
                                            .fontWeight(.semibold)
                                            .padding(.bottom, 5)
                                        
                                        Text("Nubank")
                                            .font(Font.custom("Rubik",size: 12))
                                        
                                        Text("123.123.123-12")
                                            .font(Font.custom("Rubik",size: 12))
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
                                        .background(Color(.lightGray).opacity(0.4))
                                        .cornerRadius(10)
                                    VStack(alignment: .leading){
                                        Text("Ana")
                                            .font(Font.custom("Rubik",size: 25))
                                            .fontWeight(.bold)
                                        
                                        Text("Laura")
                                            .font(Font.custom("Rubik",size: 25))
                                            .fontWeight(.bold)
                                            .padding(.bottom, 5)
                                        
                                        Text("Inter")
                                            .font(Font.custom("Rubik",size: 12))
                                        
                                        Text("321.321.321-32")
                                            .font(Font.custom("Rubik",size: 12))
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
                }}
            Spacer()
        }
    }
}
#Preview {
    TelaPix()
}
