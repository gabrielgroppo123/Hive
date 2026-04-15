///
//  PixQRcode.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 06/04/26.
//

import SwiftUI

struct Confirmar: View {
    @State var continuar: Bool = false
    @State var voltar: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack{
            //Spacer()
            VStack{
                Image("iconhive")
                    .padding(.top, 70)
                    .padding(.bottom, 10)
                Text("Pagar R$ 100,00")
                    .font(.custom("Rubik", size: 22))
                    .fontWeight(.semibold)
                    .padding(.bottom, 3)
                HStack{
                    Text("Para")
                        .foregroundColor(.gray)
                        .font(.custom("Rubik", size: 18))
                    Text("São José Restaurante")
                        .font(.custom("Rubik", size: 18))
                        .padding(.leading, -2)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                }
      
            }
            
            
            Spacer()
            
            
            VStack{
                HStack{
                    Text("Quem vai receber")
                        .font(.custom("Rubik", size: 20))
                        .padding(.bottom, 15)
                        .padding(.leading, 35)
                    Spacer()
                    
                }
                HStack{
                    Text("Nome")
                        .font(.custom("Rubik", size: 14))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    Text("São José Restaurante")
                        .font(.custom("Rubik", size: 14))
                    
                }.padding(.horizontal, 35)
                    .padding(.bottom, 10)
                HStack{
                    Text("CPF/CNPJ")
                        .font(.custom("Rubik", size: 14))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    Text("⦁⦁⦁.⦁⦁⦁.159-01")
                        .font(.custom("Rubik", size: 14))
                    
                    
                }.padding(.horizontal, 35)
                    .padding(.bottom, 10)
                HStack{
                    Text("ID da transição")
                        .font(.custom("Rubik", size: 14))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    Text("348980294095")
                        .font(.custom("Rubik", size: 14))
                    
                    
                }
               
                    .padding(.horizontal, 35)
                    .padding(.bottom, 50)
            }
            
            
            Spacer()
            
                
            Button(action:{
                continuar = true
            }){
                VStack(alignment: .leading){
                    Text("Continuar")
                        .foregroundColor(.white)
                        .font(.custom("Rubik", size: 18))
                        .frame(width: 320, height: 50)
                        .fontWeight(.semibold)
                        .background(Color("corPrincipal"))
                        .cornerRadius(12)
                }.navigationDestination(isPresented:$continuar){
                    DigitePin()
                }
                .padding(.bottom, 50)
            }
            //Spacer()
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
        
    }
}

#Preview {
    Confirmar()
}
