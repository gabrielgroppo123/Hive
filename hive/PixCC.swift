//
//  BoletoDigitar.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 02/04/26.
//

import SwiftUI

struct PixCC: View {
    @Environment(\.dismiss) var dismiss
    @State var valor: String = ""
    @State var voltar: Bool = false
    @State var confirmar: Bool = false
    @FocusState private var campoAtivo: Bool
    
    var body: some View {
        VStack{
            
            VStack{
                HStack{
                    Text("Copia e Cola")
                        .font(.custom("Rubik", size: 18))
                    Spacer()
                }.padding(.horizontal, 35)
                
                TextField("", text: $valor)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .frame(width: 320)
                    .focused($campoAtivo)
            }.padding(.top, 100)
  
            Spacer()
            
            Button(action:{
                confirmar = true
            }){
                VStack(alignment: .leading){
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.custom("Rubik", size: 20))
                        .padding(.vertical, 15)
                        .frame(width: 320, height: 60)
                        .background(Color("corPrincipal"))
                        .cornerRadius(12)
                }.navigationDestination(isPresented: $confirmar){
                    Confirmar()
                }
                .padding(.bottom, 10)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("corPrincipal"))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .padding(.bottom, 50)
        .contentShape(Rectangle())
        .onTapGesture {
            campoAtivo = false
        }
    }
    
}
#Preview {
    PixCC()
}
