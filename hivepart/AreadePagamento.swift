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
//                Button(action:{
//                    voltar = true
//                }) {
//                    Image("seta")
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding(.leading, 35)
//                }.navigationDestination(isPresented: $voltar){
//                    //Depende de onde o usuario vem
//                }
//                .padding(.bottom, 50)
                
                HStack{
                    Text("Saldo")
                        .font(.custom("Rubik", size: 18))
                    Spacer()
                    Text("R$ 1.000,00")
                        .font(.custom("Rubik", size: 18))
                        .foregroundColor(Color(.darkGray))
                    Image("olho")
                }.padding(.horizontal, 35)
                    .padding(.top, 100)
                
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
                        .font(.custom("Rubik", size: 16))
                        //.frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(Color(.corPrincipal))
                        .padding(.trailing, -3)
                    Text("Ana Clara Rocha")
                        .font(.custom("Rubik", size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.corPrincipal))
                    
                }.padding(.bottom, 300)
                .padding(.leading, 35)
                
            }//.padding(.top, 20)
  
            Spacer()
            
            Button(action:{
                confirmar = true
            }){
                VStack(alignment: .leading){
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.custom("Rubik", size: 20))
                        .frame(width: 320, height: 60)
                        .background(Color(.corPrincipal))
                        .cornerRadius(12)
                }.navigationDestination(isPresented: $confirmar){
                    //ConfirmarPin
                }
               // .padding(.bottom, 50)
            }
        }
        .padding(.bottom, 50)
    }
    
}
#Preview {
    AreadePagamento()
}
