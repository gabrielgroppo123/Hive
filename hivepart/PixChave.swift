//
//  PixChave.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 07/04/26.
//

import SwiftUI

struct PixChave: View {
    @State var valor: String = ""
    @State var voltar: Bool = false
    @State var confirmar: Bool = false
    
    
    var body: some View {
        VStack{
            
            VStack{
               
                
                HStack{
                    Text("Chave Pix")
                        .font(.custom("Rubik", size: 18))
                    Spacer()
                }.padding(.horizontal, 35)
                
                TextField("", text: $valor)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .frame(width: 320)
                
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
        .padding(.bottom, 50)
    }
    
}
#Preview {
    PixChave()
}
