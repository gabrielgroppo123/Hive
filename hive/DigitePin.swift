import SwiftUI

struct DigitePin: View {
    @Environment(\.dismiss) var dismiss

    @State private var pin: String = ""
    @FocusState private var isFocused: Bool
    @State var irComprovante: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            Text("Digite seu PIN")
                .font(Font.custom("Parkinsans", size: 35))
                .fontWeight(.bold)
                .foregroundColor(Color("corPrincipal"))
                .padding(.leading, 35)
                .padding(.bottom, 45)
                .padding(.top, 45)
            
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
            .padding(.bottom, 45)

            // TEXTFIELD INVISÍVEL (motor real)
            TextField("", text: $pin)
                .keyboardType(.numberPad)
                .focused($isFocused)
                .opacity(0.01)
                .onChange(of: pin) { _, newValue in
                    let filtered = newValue.filter { $0.isNumber }
                    pin = String(filtered.prefix(4))
                }
            //Spacer()
            // BOTÃO
            Button(action: {
                irComprovante = true
            }) {
                VStack{
                    Text("Continuar")
                        .frame(width: 320, height: 50)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(Font.custom("Rubik", size: 18))
                   
                        .background(Color("corPrincipal"))
                        .cornerRadius(14)
                }
            }
            
            .padding(.horizontal, 35)
            .padding(.bottom, 70)
            .navigationDestination(isPresented: $irComprovante){
                ComprovantePix()
            }
        Spacer()
        }
        .onAppear {
            isFocused = true
        }
        
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
        .ignoresSafeArea(.keyboard)
    }

   
    func getDigit(_ index: Int) -> String {
        guard index < pin.count else { return "" }
        let char = pin[pin.index(pin.startIndex, offsetBy: index)]
        return String(char)
    }
}

#Preview {
    DigitePin()
}

