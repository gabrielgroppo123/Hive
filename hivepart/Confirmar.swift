//
//  PixQRcode.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 06/04/26.
//

import SwiftUI

struct Confirmar: View {
    @State var continuar: Bool = false
    @State var voltar: Bool = false
    
    
    var body: some View {
        
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
            .padding(.bottom, 40)
            
            Image("iconhive")
                .padding(.bottom, 10)
            Text("Pagar R$ 100,00")
                .font(.system(size: 22))
                .fontWeight(.bold)
                .padding(.bottom, 3)
            HStack{
                Text("Para")
                    .foregroundColor(.gray)
                Text("São José Restaurante")
                    .padding(.leading, -2)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }.padding(.bottom, 120)
                
            HStack{
                Text("Quem vai receber")
                    .font(.system(size: 22))
                    .padding(.bottom, 15)
                    .padding(.leading, 35)
                Spacer()

            }
            HStack{
                Text("Nome")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                    
                Spacer()
                Text("São José Restaurante")
                    .font(.system(size: 18))
                    
            }.padding(.horizontal, 35)
                .padding(.bottom, 10)
            HStack{
                Text("CPF/CNPJ")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                
                Spacer()
                Text("000.000.000-00")
                    .font(.system(size: 18))
                    
                
            }.padding(.horizontal, 35)
                .padding(.bottom, 10)
            HStack{
                Text("ID da transição")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                    
                Spacer()
                Text("348980294095")
                    .font(.system(size: 18))
                    
                
            }.padding(.bottom, 80)
                .padding(.horizontal, 35)
            
            Button(action:{
                continuar = true
            }){
                VStack(alignment: .leading){
                    Text("Continuar")
                        .foregroundColor(.white)
                        
                        .font(.system(size: 20))
                        .frame(width: 320, height: 50)
                        .fontWeight(.bold)
                    //.frame(width: 105, height: 49, alignment: .center)
                        .background(Color(red: 0.97, green: 0.21, blue: 0.43))
                        .cornerRadius(12)
                }.navigationDestination(isPresented:$continuar){
                    //DigitarPin
                }
                .padding(.bottom, 10)
            }
        }
        
    }
}

#Preview {
    Confirmar()
}
