import SwiftUI

struct TelaPix: View {
    @Environment(\.dismiss) var dismiss
    @State var irQRCode: Bool = false
    @State var irCC: Bool = false
    @State var irChave: Bool = false
    
    var body: some View {
        VStack {
            Text("Área Pix")
                .font(.custom("Parkinsans", size: 38))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 35)
                .padding(.bottom, 25)
                .padding(.top, 40)
            
            // Botões
            VStack(spacing: 8) {
                Button(action: { irQRCode = true }) {
                    HStack {
                        Image("qrcode")
                        Text("QR Code")
                            .foregroundColor(.white)
                            .font(.custom("Rubik", size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .frame(width: 320, height: 50)
                    .background(Color("corPrincipal"))
                    .cornerRadius(12)
                }
                .navigationDestination(isPresented: $irQRCode) {
                    LerQRCode()
                }
                
                Button(action: { irCC = true }) {
                    HStack {
                        Image("copy")
                        Text("Copia e Cola")
                            .foregroundColor(.white)
                            .font(.custom("Rubik", size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .frame(width: 320, height: 50)
                    .background(Color("corPrincipal"))
                    .cornerRadius(12)
                }
                .navigationDestination(isPresented: $irCC) {
                    PixCC()
                }
                
                Button(action: { irChave = true }) {
                    HStack {
                        Image("chave")
                        Text("Chave Pix")
                            .foregroundColor(.white)
                            .font(.custom("Rubik", size: 20))
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    .frame(width: 320, height: 50)
                    .background(Color("corPrincipal"))
                    .cornerRadius(12)
                }
                .navigationDestination(isPresented: $irChave) {
                    PixChave()
                }
            }
            Spacer()
            // Favoritos
            
            Text("Favoritos")
                .font(Font.custom("Rubik", size: 18))
                .foregroundColor(Color("corPrincipal"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 35)
                .padding(.top, 30)
                .padding(.bottom, -30)
                .fontWeight(.semibold)
            ZStack{
                Rectangle()
                    .frame(width: 50, height: 30)
                    .foregroundColor(.gray.opacity(0.4))
                    .cornerRadius(20)
                    .padding(.top, 230)
                TabView{
                    HStack{
                        ZStack(alignment: .topLeading) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 155, height: 158)
                                .background(Color(.lightGray).opacity(0.4))
                                .cornerRadius(10)
                            VStack(alignment: .leading) {
                                Text("Gabriel")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.semibold)
                                Text("Groppo")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 30)
                                Text("Nubank")
                                    .font(Font.custom("Rubik", size: 12))
                                Text("123.123.123-12")
                                    .font(Font.custom("Rubik", size: 12))
                            }
                            .padding(.horizontal, 10)
                            .padding(.top, 15)
                        }
                        
                        ZStack(alignment: .topLeading) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 155, height: 158)
                                .background(Color(.lightGray).opacity(0.4))
                                .cornerRadius(10)
                            VStack(alignment: .leading) {
                                Text("Sabrina")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.semibold)
                                Text("Carpenter")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 30)
                                
                                Text("Nubank")
                                    .font(Font.custom("Rubik", size: 12))
                                Text("231.231.231-21")
                                    .font(Font.custom("Rubik", size: 12))
                            }
                            .padding(.horizontal, 10)
                            .padding(.top, 15)
                        }
                        
                    }
                    HStack {
                        ZStack(alignment: .topLeading) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 150, height: 158)
                                .background(Color(.lightGray).opacity(0.4))
                                .cornerRadius(10)
                            VStack(alignment: .leading) {
                                Text("Ana")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.bold)
                                Text("Clara")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.bold)
                                    .padding(.bottom, 30)
                                Text("Inter")
                                    .font(Font.custom("Rubik", size: 12))
                                Text("321.321.321-32")
                                    .font(Font.custom("Rubik", size: 12))
                            }
                            .padding(.leading, 10)
                            .padding(.top, 15)
                        }
                        
                        ZStack(alignment: .topLeading) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 150, height: 158)
                                .background(Color(.lightGray).opacity(0.4))
                                .cornerRadius(10)
                            VStack(alignment: .leading) {
                                Text("Julio")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.bold)
                                Text("Sampaio")
                                    .font(Font.custom("Rubik", size: 25))
                                    .fontWeight(.bold)
                                    .padding(.bottom, 30)
                                Text("Inter")
                                    .font(Font.custom("Rubik", size: 12))
                                Text("341.324.321-42")
                                    .font(Font.custom("Rubik", size: 12))
                            }
                            .padding(.leading, 10)
                            .padding(.top, 15)
                        }
                        
                    }
                }
                .frame(width: 340, height: 280)
                .tabViewStyle(.page(indexDisplayMode: .always))
            }
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("corPrincipal"))
                        .bold()
                }
            }
        }
    }
}

#Preview {
    NavigationStack { TelaPix() }
}
