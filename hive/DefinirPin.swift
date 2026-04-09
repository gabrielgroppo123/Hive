import SwiftUI

struct DefinirPin: View {
    @Environment(\.dismiss) var dismiss

    @State private var pin: String = ""
    @FocusState private var isFocused: Bool

    var body: some View {
        VStack(alignment: .leading) {

            Spacer()

            Text("Defina seu PIN para\nrealizar pagamento")
                .font(Font.custom("Parkinsans", size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color("corPrincipal"))
                .padding(.leading, 35)
                .padding(.bottom, 40)

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

                        Text(getDigit(i))
                            .font(.title)
                            .fontWeight(.bold)
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

            // BOTÃO
            Button(action: {}) {
                Text("Criar conta")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(Font.custom("Parkinsans", size: 18))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 18)
                    .background(Color(red: 247/255, green: 54/255, blue: 109/255))
                    .cornerRadius(14)
            }
            .padding(.horizontal, 35)
            .padding(.top, 60)

            Spacer()
        }
        .onAppear {
            isFocused = true
        }
        .ignoresSafeArea(.keyboard)
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

    // 🔥 pega cada dígito do PIN
    func getDigit(_ index: Int) -> String {
        guard index < pin.count else { return "" }
        let char = pin[pin.index(pin.startIndex, offsetBy: index)]
        return String(char)
    }
}

#Preview {
    DefinirPin()
}

