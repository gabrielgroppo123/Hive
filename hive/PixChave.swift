//
//  PixChave.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 02/04/26.
//

import SwiftUI

struct PixChave: View {
    @State var email: String = ""
    @State var senha: String = ""
    @State var irHome: Bool = false
    
    var body: some View {
        VStack{
            
            VStack{
                Button(action:{
                    print("Voltar")
                }) {
                    Image("seta")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 35)
                }.padding(.bottom, 50)
                
                HStack{
                    Text("Chave Pix")
                        .font(.system(size: 18))
                    Spacer()
                    Text("Colar")
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                }.padding(.horizontal, 35)
                
                TextField("", text: $email)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    //.padding(.horizontal, 30)
                    .frame(width: 320)
                    .padding(.bottom, 300)
                
            }//.padding(.top, 20)
  
            Button(action:{
                print("Voltar")
            }){
                VStack(alignment: .leading){
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .fontWeight(.regular)
                        .font(.system(size: 20))
                        //.padding(.horizontal, 12)
                        .padding(.vertical, 15)
                        //.padding(.bottom, 17)
                        .frame(width: 320, height: 60)
                        .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                        .cornerRadius(12)
                }
                .padding(.bottom, 10)
            }
        }
        .padding(.bottom, 150)
        .ignoresSafeArea(.keyboard)
        .navigationBarBackButtonHidden(true)
    }
    
}
#Preview {
    PixChave()
}
