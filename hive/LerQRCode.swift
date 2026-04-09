//
//  LerQRCode.swift
//  hive
//
//  Created by GABRIEL GROPPO on 06/04/26.
//

import SwiftUI

struct LerQRCode: View {
    @Environment(\.dismiss) var dismiss
    @State private var irParaPix: Bool = false
    var body: some View {
        
        VStack{
            //                //SetaVoltar
            //                Button(action: { irParaPix = true }) {
            //                    Image("seta voltar")
            //                }
            //                .buttonStyle(.plain)
            //                .navigationDestination(isPresented: $irParaPix) {
            //                    TelaPix()
            //                }
            //                .frame(maxWidth: .infinity, alignment: .leading)
            //                .padding(.leading, 35)
            //                .padding(.bottom, 10)
            //                .padding(.top, 30)
            Spacer()
            
            Text("Escanear código QR")
                .font(Font.custom("Rubik", size: 20))
                .foregroundColor(Color("corPrincipal"))
                .padding(.bottom, 35)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 260.29871, height: 289.22076)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .padding(.bottom, 45)
            //Pix
            Button(action: { irParaPix = true }) {
                ZStack {
                    Image("ellipse")
                    Image("Camera")
                }
            }
            .buttonStyle(.plain)
            .navigationDestination(isPresented: $irParaPix) {
                TelaPix()
            }
            Spacer()
            
        }
        
        
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar) // força ícones claros
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("corPrincipal"))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LerQRCode()
}
