//
//  AreadePagamento.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 02/04/26.
//
import SwiftUI

struct AreadePagamento: View {
    @State var voltar: Bool = false
    @State var confirmar: Bool = false
    @State var valor: String = ""
    
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
                    //Depende de onde o usuario vem
                }
                .padding(.bottom, 50)
                
                HStack{
                    Text("Saldo")
                        .font(.system(size: 18))
                    Spacer()
                    Text("R$ 1.000,00")
                        .font(.system(size: 18))
                        .foregroundColor(Color(.darkGray))
                    Image("olho1")
                }.padding(.horizontal, 35)
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 320, height: 2)
                  .background(Color(.corPrincipal))
                
                TextField("R$0,00", text: $valor)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    //.padding(.horizontal, 30)
                    .frame(width: 320)
                    .padding(.top, 50)
                HStack{
                    Text("Pagar para")
                        .font(.system(size: 16))
                        //.frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(Color(.corPrincipal))
                        .padding(.trailing, -3)
                    Text("Ana Clara Rocha")
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.corPrincipal))
                    
                }.padding(.bottom, 300)
                .padding(.leading, 35)
                
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
                        //.padding(.vertical, 15)
                        //.padding(.bottom, 17)
                        .frame(width: 320, height: 60)
                        .background(Color(.corPrincipal))
                        .cornerRadius(12)
                }.navigationDestination(isPresented: $confirmar){
                    //ConfirmarPin
                }
                .padding(.bottom, 50)
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
