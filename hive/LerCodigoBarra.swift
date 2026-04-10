//
//  LerCodigoBarra.swift
//  hive
//
//  Created by GABRIEL GROPPO on 06/04/26.
//

import SwiftUI

struct LerCodigoBarra: View {
    @Environment(\.dismiss) var dismiss
    @State private var irParaPix: Bool = false
    
    var body: some View {
       
        HStack {
            //Spacer()
            ZStack{
            VStack {
                Spacer()
                Button(action: { irParaPix = true }) {
                    ZStack {
                        Image("ellipse")
                        Image("Camera")
                            .rotationEffect(.degrees(90))
                    }
                }
                .buttonStyle(.plain)
                .navigationDestination(isPresented: $irParaPix) {
                    TelaPix()
                }
                Spacer()
            }
            .padding(.leading, -180)
            
            
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 130, height: 650)
                    .background(Color(.lightGray))
                Text("Escanear código de barras")
                    .frame(width: 250, height: 290)
                    .font(Font.custom("Rubik", size: 20))
                    .foregroundColor(Color(.gray))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 250)
                    .rotationEffect(Angle(degrees: 90))
            }
            
            //Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.up")
                        .foregroundColor(Color("corPrincipal"))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        
    }
}
#Preview {
    NavigationStack { LerCodigoBarra() }
}
