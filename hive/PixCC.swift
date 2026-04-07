//
//  BoletoDigitar.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 02/04/26.
//

import SwiftUI

struct PixCC: View {
    @State var valor: String = ""
    @State var voltar: Bool = false
    @State var confirmar: Bool = false
    
    
    var body: some View {
        VStack{
            
            VStack{
                Button(action:{
                    voltar = true
                }) {
                    Image("seta")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                }.navigationDestination(isPresented: $voltar){
                    AreaBoleto()
                }
                .padding(.bottom, 50)
                
                HStack{
                    Text("Copia e Cola")
                        .font(.system(size: 18))
                    Spacer()
                    //Text("Colar")
                      //  .font(.system(size: 18))
                        //.foregroundColor(.gray)
                }.padding(.horizontal, 35)
                
                TextField("", text: $valor)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    //.padding(.horizontal, 30)
                    .frame(width: 320)
                    .padding(.bottom, 350)
                
            }//.padding(.top, 20)
  
            Button(action:{
                confirmar = true
            }){
                VStack(alignment: .leading){
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        //.padding(.horizontal, 12)
                        .padding(.vertical, 15)
                        //.padding(.bottom, 17)
                        .frame(width: 320, height: 60)
                        .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                        .cornerRadius(12)
                }.navigationDestination(isPresented: $confirmar){
                    Confirmar()
                }
                .padding(.bottom, 10)
            }
        }
        .padding(.bottom, 50)
        .ignoresSafeArea(.keyboard)
        .navigationBarBackButtonHidden(true)
    }
    
}
#Preview {
    PixCC()
}
