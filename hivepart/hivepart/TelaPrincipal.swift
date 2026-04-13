//
//  TelaPrincipal.swift
//  hive
//
//  Created by GABRIEL GROPPO on 31/03/26.
//

import SwiftUI

struct TelaPrincipal: View {
    @State private var offsetCarteira: CGFloat = 0
    @State private var irParaPix: Bool = false
    @State private var irParaBoleto: Bool = false
    @State private var irParaPerfil: Bool = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            // Todo o conteúdo da home
            VStack {
                
                
                
                
                
                VStack{
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Olá,")
                                .font(Font.custom("Parkinsans", size: 30))
                                .foregroundColor(Color("corPrincipal"))
                            Text("Fulano")
                                .font(Font.custom("Parkinsans", size: 30))
                                .foregroundColor(Color("corPrincipal"))
                                .fontWeight(.bold)
                        }
                        Spacer()
                        Button(action: { irParaPerfil = true }) {
                            Image("user")
                        }
                        .buttonStyle(.plain)
                        .navigationDestination(isPresented: $irParaPerfil) {
                            TelaPerfil()
                        }
                        
                    }.padding(.horizontal, 35)
                    .padding(.top, 20)
                    

                }.padding(.horizontal, 35)
                
                
//                HStack {
//                    VStack(alignment: .leading) {
//                        Text("Olá,")
//                            .font(Font.custom("Parkinsans", size: 30))
//                            .foregroundColor(Color("corPrincipal"))
//                        Text("Fulano")
//                            .font(Font.custom("Parkinsans", size: 30))
//                            .foregroundColor(Color("corPrincipal"))
//                            .fontWeight(.bold)
//                    }.padding(.leading, 35)
//                    Spacer()
//                    Button(action: { irParaPerfil = true }) {
//                        Image("user")
//                    }
//                    .buttonStyle(.plain)
//                    .navigationDestination(isPresented: $irParaPerfil) {
//                        TelaPerfil()
//                    }
//                    
//                }.padding(.trailing, 35)
//                .padding(.top, 20)
//                
                
                
                
                
                
                
                
                
                
                HStack {
                    //ZStack(alignment: .bottomLeading) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 243, height: 142)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color("corPrincipal"), location: 0.00),
                                        Gradient.Stop(color: Color(red: 1, green: 0.55, blue: 0.65), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.42, y: 0.14),
                                    endPoint: UnitPoint(x: 0.96, y: 1)
                                )
                            ).cornerRadius(14)
                            .padding(.leading, 35)
                            .padding(.trailing, 10)
                            .overlay(
                                Text("Cartões")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Rubik", size: 20))
                                    .padding(.trailing, 110)
                                    .padding(.top, 100)
                            )
                            
//                        Text("Cartões")
//                            .foregroundColor(.white)
//                            .font(Font.custom("Rubik", size: 20))
//                            .padding(.leading, 20)
//                            .padding(.bottom, 10)
                    //}//.padding(.horizontal, 35)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 129, height: 142)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color("corPrincipal"), location: 0.00),
                                    Gradient.Stop(color: Color(red: 1, green: 0.55, blue: 0.65), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.14, y: 0.25),
                                endPoint: UnitPoint(x: 1, y: 1)
                            )
                        )
                        .cornerRadius(14)
                }
                .padding(.leading, 35)

                //Tres bolinhas
                HStack {
                    Image("bolinha")
                        .frame(width: 7.5, height: 7.5)
                    Image("bolinha clara")
                        .frame(width: 7.5, height: 7.5)
                    Image("bolinha clara")
                        .frame(width: 7.5, height: 7.5)
                }
                .padding(.top, 12)
                .padding(.bottom, 12)

                //Icones
                
                
                
                
                
                
                
                
                
                
                
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 510)
                        .background(Color(.lightGray).opacity(0.2))
                    VStack(spacing: 20) {
                        HStack(spacing: 20) {
                            //Pix
                            Button(action: { irParaPix = true }) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 90, height: 90)
                                        .background(Color(.white).opacity(0.8))
                                        .cornerRadius(9.5)
                                        .shadow(radius: 5, x: 4, y: 4)
                                    VStack(spacing: 10) {
                                        Image("icone pix")
                                        Text("Pix")
                                    }
                                    .padding(.bottom, -10)
                                }
                            }
                            .buttonStyle(.plain)
                            .navigationDestination(isPresented: $irParaPix) {
                                //TelaPix()
                            }

                            //Boleto
                            Button(action: { irParaBoleto = true }) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: 90, height: 90)
                                        .background(Color(.white).opacity(0.8))
                                        .cornerRadius(9.5)
                                        .shadow(radius: 5, x: 4, y: 4)
                                    VStack(spacing: 10) {
                                        Image("icone boleto")
                                        Text("Boleto")
                                    }
                                    .padding(.bottom, -10)
                                }
                            }
                            .buttonStyle(.plain)
                            .navigationDestination(isPresented: $irParaBoleto) {
                                //TelaBoleto()
                            }

                            //Investir
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 90, height: 90)
                                    .background(Color(.white).opacity(0.8))
                                    .cornerRadius(9.5)
                                    .shadow(radius: 5, x: 4, y: 4)
                                VStack(spacing: 15) {
                                    Image("icone investir")
                                    Text("Investir")
                                }
                                .padding(.bottom, -18)
                            }
                        }

                        HStack(spacing: 20) {
                            //Caixinha
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 90, height: 90)
                                    .background(Color(.white).opacity(0.8))
                                    .cornerRadius(9.5)
                                    .shadow(radius: 5, x: 4, y: 4)
                                VStack(spacing: 10) {
                                    Image("icone caixinha")
                                    Text("Caixinha")
                                }
                                .padding(.bottom, -10)
                            }
                            //Recarga
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 90, height: 90)
                                    .background(Color(.white).opacity(0.8))
                                    .cornerRadius(9.5)
                                    .shadow(radius: 5, x: 4, y: 4)
                                VStack(spacing: 10) {
                                    Image("icone recarga")
                                    Text("Recarga")
                                }
                                .padding(.bottom, -10)
                            }
                            //Seguro
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 90, height: 90)
                                    .background(Color(.white).opacity(0.8))
                                    .cornerRadius(9.5)
                                    .shadow(radius: 5, x: 4, y: 4)
                                VStack(spacing: 10) {
                                    ZStack {
                                        Image("icone seguro")
                                        Image("check")
                                    }
                                    Text("Seguro")
                                }
                                .padding(.bottom, -10)
                            }
                        }
                    }
                    .padding(.bottom, 250)
                }
                .padding(.bottom,50)

            }

                
                                // Carteira flutuando por cima com gesto de arrastar
                Carteira()
                    .offset(y: offsetCarteira == -630 ? 0 : 630 + offsetCarteira)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                if value.translation.height < 0 {
                                    offsetCarteira = value.translation.height
                                } else if offsetCarteira == -630 {
                                    offsetCarteira = -630 + value.translation.height
                                }
                            }
                            .onEnded { value in
                                withAnimation(.spring()) {
                                    if value.translation.height < -80 {
                                        offsetCarteira = -630
                                    } else {
                                        offsetCarteira = 0
                                    }
                                }
                            }
                    )
                 .padding(.bottom,100)
                }
                .navigationBarHidden(true)
            }
        }

    


#Preview {
    TelaPrincipal()
}
