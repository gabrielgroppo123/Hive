//
//  AreadePagamento.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 02/04/26.
//
import SwiftUI

struct AreadePagamento: View {
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
                    Text("Saldo")
                        .font(.system(size: 18))
                    Spacer()
                    Text("R$1.000,00")
                        .font(.system(size: 18))
                        .foregroundColor(Color(.darkGray))
                    Image("olho1")
                }.padding(.horizontal, 35)
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 320, height: 2)
                  .background(.pink)
                
                TextField("R$0,00", text: $email)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    //.padding(.horizontal, 30)
                    .frame(width: 320)
                    .padding(.top, 50)
                Text("Pagar para X")
                    .font(.system(size: 16))
                    .padding(.bottom, 200)
                    .padding(.leading, 35)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.pink)
                
                
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
                        //.padding(.vertical, 15)
                        //.padding(.bottom, 17)
                        .frame(width: 320, height: 60)
                        .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                        .cornerRadius(12)
                }
                .padding(.bottom, 150)
            }
        }
        .padding(.bottom, 10)
        .ignoresSafeArea(.keyboard)
        .navigationBarBackButtonHidden(true)
    }
    
}
#Preview {
    AreadePagamento()
}
