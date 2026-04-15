//
//  LerQRCode.swift
//  hive
//
//  Created by GABRIEL GROPPO on 06/04/26.
//

import SwiftUI

struct LerQRCode: View {
    @Environment(\.dismiss) var dismiss
    @State private var irPagamento: Bool = false
    var body: some View {
        
        VStack{
            Spacer()
            
            Text("Escanear código QR")
                .font(Font.custom("Rubik", size: 20))
                .foregroundColor(Color(.gray))
                .padding(.bottom, 35)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 260, height: 290)
                .background(Color(.lightGray))
                .padding(.bottom, 45)
            //Pix
            Button(action: { irPagamento = true }) {
                ZStack {
                    Image("ellipse")
                    Image("Camera")
                }
            }
            .buttonStyle(.plain)
            .navigationDestination(isPresented: $irPagamento) {
                AreadePagamento()
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
