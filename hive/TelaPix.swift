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
        VStack {
            HStack{
                Text("Área Pix")
                    .font(.custom("Parkinsans", size: 38))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.bottom, 25)
                    .padding(.top, 140)
            }
            HStack{
                
                
                VStack{
                    Button(action:{
                        irQRCode = true
                    }){
                        HStack{
                            Image("qrcode")
                            Text("QR Code")
                                .foregroundColor(.white)
                                .padding(.trailing, 180)
                                .font(.custom("Rubik", size: 20))
                                .fontWeight(.semibold)
                        }
                        .frame(width: 320, height: 50)
                        .background(Color("corPrincipal"))
                        .cornerRadius(12)
                        .navigationDestination(isPresented: $irQRCode){
                            LerQRCode()
                        }
                    }.padding(.bottom, 5)
                    Button(action:{
                        irQRCode = true
                    }){
                        HStack{
                            Image("copy")
                            Text("Copia e Cola")
                                .foregroundColor(.white)
                                .padding(.trailing, 140)
                                .font(.custom("Rubik", size: 20))
                                .fontWeight(.semibold)
                            
                        }
                        .frame(width: 320, height: 50)
                        .background(Color("corPrincipal"))
                        .cornerRadius(12)
                        .navigationDestination(isPresented: $irQRCode){
                            LerQRCode()
                        }
                    }.padding(.bottom, 5)
                    
                    Button(action:{
                        //codigo = true
                    }){
                        HStack{
                            Image("chave")
                            Text("Chave Pix")
                                .foregroundColor(.white)
                                .padding(.trailing, 160)
                                .font(.custom("Rubik", size: 20))
                                .fontWeight(.semibold)
                        }
                        .frame(width: 320, height: 50)
                        .background(Color("corPrincipal"))
                        .cornerRadius(12)
                        //navigationDestination(isPresented: $codigo){
                        //BoletoDigitar()
                    }
                    .padding(.bottom, 80)
                    
                }
            }
            
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
      
            .navigationBarBackButtonHidden(true)  // ← esconde a padrão
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("corPrincipal"))
                            .bold()
                    }
                }
            }
        .padding()
        .padding(.bottom, 150)
    }}
#Preview {
    NavigationStack { TelaPix() } // ← preview com NavigationStack pra ver a seta
}
