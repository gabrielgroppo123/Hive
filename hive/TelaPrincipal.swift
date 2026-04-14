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
                            Perfil()
                        }
                        
                    }.padding(.horizontal, 35)
                    .padding(.top, 20)
                    

                }.padding(.horizontal, 35)
                
                
                
                // Cartões com scroll lateral
                TabView {
                    
                    
                    
                    // Cartão 1
                    ZStack(alignment: .bottomLeading) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 310, height: 165)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color("corPrincipal"), location: 0.00),
                                        Gradient.Stop(color: Color(red: 1, green: 0.55, blue: 0.65), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.42, y: 0.14),
                                    endPoint: UnitPoint(x: 0.96, y: 1)
                                )
                            )
                            .cornerRadius(14)
                        Text("Cartões")
                            .foregroundColor(.white)
                            .font(Font.custom("Rubik", size: 20))
                            .padding(.leading, 15)
                            .padding(.bottom, 10)
                        Image("Logo Branca")
                            .resizable()
                            .frame(width: 35, height: 50)
                            .padding(.leading, 250)
                            .padding(.bottom, 100)
                    }
                    
                    // Cartão 2
                    ZStack(alignment: .bottomLeading) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 310, height: 165)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(.gray), location: 0.00),
                                        Gradient.Stop(color: Color(.lightGray).opacity(0.5), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.42, y: 0.14),
                                    endPoint: UnitPoint(x: 0.96, y: 1)
                                )
                            )
                            .cornerRadius(14)
                        Text("Crédito")
                            .foregroundColor(.white)
                            .font(Font.custom("Rubik", size: 20))
                            .padding(.leading, 15)
                            .padding(.bottom, 10)
                        Image("Logo Branca")
                            .resizable()
                            .frame(width: 35, height: 50)
                            .padding(.leading, 250)
                            .padding(.bottom, 100)
                    }
                    // Cartão 3
                    ZStack(alignment: .bottomLeading) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 310, height: 165)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color("CorCartaoBranco"), location: 0.00),
                                        Gradient.Stop(color: Color(.gray), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0.42, y: 0.14),
                                    endPoint: UnitPoint(x: 0.96, y: 1)
                                )
                            )
                            .cornerRadius(14)
                        Text("Débito")
                            .foregroundColor(Color("CorFundoIcone"))
                            .font(Font.custom("Rubik", size: 20))
                            .padding(.leading, 15)
                            .padding(.bottom, 10)
                        Image("Logo Preta")
                            .resizable()
                            .frame(width: 35, height: 50)
                            .padding(.leading, 250)
                            .padding(.bottom, 100)
                    }
                    
                    
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .frame(width: 380, height: 170)
                .padding(.horizontal, 35)
                .padding(.top, 10)
                .padding(.bottom,20)

                
                //Icones
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 393, height: 510)
                        .background(Color("CorFundoIcone"))
                    VStack(spacing: 20) {
                        HStack(spacing: 20) {
                            //Pix
                            Button(action: { irParaPix = true }) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("ReversePrimary"))
                                        .frame(width: 90, height: 90)
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
                                TelaPix()
                            }

                            //Boleto
                            Button(action: { irParaBoleto = true }) {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("ReversePrimary"))
                                        .frame(width: 90, height: 90)
                                        
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
                                    .foregroundColor(Color("ReversePrimary"))
                                    .frame(width: 90, height: 90)
                                  
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
                                    .foregroundColor(Color("ReversePrimary"))
                                    .frame(width: 90, height: 90)
                                   
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
                                    .foregroundColor(Color("ReversePrimary"))
                                    .frame(width: 90, height: 90)
                                    
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
                                    .foregroundColor(Color("ReversePrimary"))
                                    .frame(width: 90, height: 90)
                                    
                                    .cornerRadius(9.5)
                                    .shadow(radius: 5, x: 4, y: 4)
                                VStack(spacing: 10) {
                                    ZStack {
                                        Image("icone seguro")
                                        
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
