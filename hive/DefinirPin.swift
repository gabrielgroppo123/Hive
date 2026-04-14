import SwiftUI

struct DefinirPin: View {
    @Environment(\.dismiss) var dismiss

    @State private var pin: String = ""
    @FocusState private var isFocused: Bool
    @State var irHome: Bool = false

    var body: some View {
        VStack(alignment: .leading) {

            Text("Defina seu PIN para\nrealizar pagamento")
                .font(Font.custom("Parkinsans", size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color("corPrincipal"))
                .padding(.leading, 35)
                .padding(.bottom, 40)
                .padding(.top, 100)

            //Spacer()
            // PIN VISUAL (4 quadrados)
            HStack(spacing: 16) {
                ForEach(0..<4) { i in
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color(.systemGray5))
                            .frame(width: 70, height: 85)
                            .overlay(
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(
                                        i == pin.count ? Color("corPrincipal") : Color.clear,
                                        lineWidth: 3
                                    )
                            )

                        Text(getDigit(i).isEmpty ? "0" : getDigit(i))
                            .font(.title)
                            .fontWeight(.bold)
                            .opacity(getDigit(i).isEmpty ? 0 : 1)
                            .frame(maxWidth: .infinity)
                            
                    }
                }
            }
            .padding(.horizontal, 35)
            .padding(.bottom, 50)

            // TEXTFIELD INVISÍVEL (motor real)
            TextField("", text: $pin)
                .keyboardType(.numberPad)
                .focused($isFocused)
                .opacity(0.01)
                .onChange(of: pin) { _, newValue in
                    let filtered = newValue.filter { $0.isNumber }
                    pin = String(filtered.prefix(4))
                }
            Spacer()
            
            // BOTÃO
            Button(action: {
                irHome = true
            }) {
                VStack{
                    Text("Criar conta")
                        .frame(width: 320, height: 50)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(Font.custom("Rubik", size: 18))
                   
                        .background(Color("corPrincipal"))
                        .cornerRadius(14)
                }
            }
            
            .padding(.horizontal, 35)
            .padding(.top, 100)
            .navigationDestination(isPresented: $irHome){
                TelaPrincipal()
            }
            
            Spacer()
        }
        .onAppear {
            isFocused = true
        }
        //.ignoresSafeArea(.keyboard)
        .navigationBarTitleDisplayMode(.inline)
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

   
    func getDigit(_ index: Int) -> String {
        guard index < pin.count else { return "" }
        let char = pin[pin.index(pin.startIndex, offsetBy: index)]
        return String(char)
    }
}

#Preview {
    DefinirPin()
}

