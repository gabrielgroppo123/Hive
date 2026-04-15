//
//  AreadePagamento.swift
//  hivepart
//
//  Created by PEDRO HENRIQUE HOSSAKA TERUEL on 02/04/26.
//
import SwiftUI

struct AreadePagamento: View {
    @Environment(\.dismiss) var dismiss
    @State var voltar: Bool = false
    @State var confirmar: Bool = false
    @State var valor: String = ""
    @FocusState private var campoAtivo: Bool
    
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Saldo")
                        .font(.custom("Rubik", size: 18))
                    Spacer()
                    Text("R$ 1.000,00")
                        .font(.custom("Rubik", size: 18))
                        .foregroundColor(Color(.darkGray))
                    Image("olho")
                }.padding(.horizontal, 35)
                    .padding(.top, 40)
                
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 320, height: 2)
                  .background(Color(.corPrincipal))
                
                TextField("R$0,00", text: $valor)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .keyboardType(.numberPad)
                    .frame(width: 320)
                    .padding(.top, 50)
                    .focused($campoAtivo)
                HStack{
                    Text("Pagar para")
                        .font(.custom("Rubik", size: 16))
                        .foregroundColor(Color(.corPrincipal))
                        .padding(.trailing, -3)
                    Text("Ana Clara Rocha")
                        .font(.custom("Rubik", size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.corPrincipal))
                    
                }.padding(.bottom, 80)
                .padding(.leading, 35)
                
                
            }
            .ignoresSafeArea(.keyboard)
            Spacer()
            
            
            Button(action:{
                confirmar = true
            }){
                VStack(alignment: .leading){
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .font(.custom("Rubik", size: 20))
                        .frame(width: 320, height: 50)
                        .background(Color(.corPrincipal))
                        .cornerRadius(12)
                }.navigationDestination(isPresented: $confirmar){
                    Confirmar()
                }
            }
            .padding(.bottom, 50)
            //Spacer()
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
        .contentShape(Rectangle())
        .onTapGesture {
            campoAtivo = false
        }
    }
    
}
#Preview {
    AreadePagamento()
}
