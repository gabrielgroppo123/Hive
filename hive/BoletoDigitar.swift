//
//  BoletoDigitar.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 02/04/26.
//

import SwiftUI

struct BoletoDigitar: View {
    @Environment(\.dismiss) var dismiss
    @State var valor: String = ""
    @State var voltar: Bool = false
    @State var confirmar: Bool = false
    
    
    var body: some View {
        VStack{
            
                
                
            HStack{
                    Text("Digitar Boleto")
                        .font(.custom("Rubik", size: 18))
                    Spacer()

                }.padding(.horizontal, 35)
                .padding(.top, 100)
                
            TextField("", text: $valor)
                .padding(10)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .frame(width: 320)

  
            
            
            Spacer()
            
            
            
            Button(action:{
                confirmar = true
            }){
                VStack(alignment: .leading){
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.custom("Rubik", size: 20))
                        //.padding(.horizontal, 12)
                        .padding(.vertical, 15)
                        //.padding(.bottom, 17)
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
        Spacer()
        .padding(.bottom, 50)
    }
    
}
#Preview {
    BoletoDigitar()
}
