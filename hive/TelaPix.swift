//
//  TelaPix.swift
//  hive
//
//  Created by GABRIEL GROPPO on 02/04/26.
//

import SwiftUI

struct TelaPix: View {
    @Environment(\.dismiss) var dismiss
    @State var irHome: Bool = false
    @State var irQRCode: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack {
                        Spacer()
                        Text("Área Pix")
                            .font(Font.custom("Parkinsans", size: 40))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 35)
                            .padding(.bottom, 25)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        
                        Button(action: { irQRCode = true }) {
                            ZStack {
                                Text("QR Code")
                                    .padding(.leading, 32)
                                    .foregroundColor(.white)
                                    .frame(width: 300, alignment: .leading)
                                    .padding(15)
                                    .background(Color("corPrincipal"))
                                    .cornerRadius(10)
                                    .font(Font.custom("Rubik", size: 20))
                                Image("qrcode")
                                    .padding(.trailing, 280)
                            }
                        }
                        .navigationDestination(isPresented: $irQRCode) { LerQRCode() }
                        .padding(.bottom, 5)
                        
                        Button(action: { irHome = true }) {
                            ZStack {
                                Text("Copia e Cola")
                                    .padding(.leading, 32)
                                    .foregroundColor(.white)
                                    .frame(width: 300, alignment: .leading)
                                    .padding(15)
                                    .background(Color("corPrincipal"))
                                    .cornerRadius(10)
                                    .font(Font.custom("Rubik", size: 20))
                                Image("copy")
                                    .padding(.trailing, 280)
                            }
                        }
                        .navigationDestination(isPresented: $irHome) { TelaPrincipal() }
                        .padding(.bottom, 5)
                        
                        Button(action: { irHome = true }) {
                            ZStack {
                                Text("Chave Pix")
                                    .padding(.leading, 32)
                                    .foregroundColor(.white)
                                    .frame(width: 300, alignment: .leading)
                                    .padding(15)
                                    .background(Color("corPrincipal"))
                                    .cornerRadius(10)
                                    .font(Font.custom("Rubik", size: 20))
                                Image("chave")
                                    .padding(.trailing, 280)
                            }
                        }
                        .navigationDestination(isPresented: $irHome) { TelaPrincipal() }
                    }
                }
                .padding(.bottom, 40)
                
                HStack {
                    VStack {
                        Text("Favoritos")
                            .font(Font.custom("Rubik", size: 18))
                            .foregroundColor(Color("corPrincipal"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 35)
                            .padding(.bottom, 15)
                            .padding(.top, 30)
                            .fontWeight(.semibold)
                        
                        HStack {
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 150, height: 158)
                                    .background(Color(.lightGray).opacity(0.4))
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("João")
                                        .font(Font.custom("Rubik", size: 25))
                                        .fontWeight(.semibold)
                                    Text("Pedro")
                                        .font(Font.custom("Rubik", size: 25))
                                        .fontWeight(.semibold)
                                        .padding(.bottom, 5)
                                    Text("Nubank")
                                        .font(Font.custom("Rubik", size: 12))
                                    Text("123.123.123-12")
                                        .font(Font.custom("Rubik", size: 12))
                                }
                                .padding(.leading, 15)
                                .padding(.top, 15)
                            }
                            .padding(.trailing, 10)
                            
                            ZStack(alignment: .topLeading) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 150, height: 158)
                                    .background(Color(.lightGray).opacity(0.4))
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("Ana")
                                        .font(Font.custom("Rubik", size: 25))
                                        .fontWeight(.bold)
                                    Text("Laura")
                                        .font(Font.custom("Rubik", size: 25))
                                        .fontWeight(.bold)
                                        .padding(.bottom, 5)
                                    Text("Inter")
                                        .font(Font.custom("Rubik", size: 12))
                                    Text("321.321.321-32")
                                        .font(Font.custom("Rubik", size: 12))
                                }
                                .padding(.leading, 15)
                                .padding(.top, 15)
                            }
                        }
                        
                        HStack {
                            Image("bolinha").frame(width: 7.5, height: 7.5)
                            Image("bolinha clara").frame(width: 7.5, height: 7.5)
                            Image("bolinha clara").frame(width: 7.5, height: 7.5)
                        }
                        .padding(.top, 15)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)  // ← esconde a padrão
        // ← toolbarColorScheme REMOVIDO
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("corPrincipal"))
                        .bold()
                }
            }
        }
    }
}

#Preview {
    NavigationStack { TelaPix() } // ← preview com NavigationStack pra ver a seta
}
