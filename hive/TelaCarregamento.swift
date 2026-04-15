import SwiftUI

struct TelaCarregamento: View {

    @State private var irLogin = false

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        Color("corPrincipal"),
                        Color(red: 247/255, green: 108/255, blue: 100/255)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                Image("Logo Branca")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            .navigationDestination(isPresented: $irLogin) {
                TelaLogin()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                irLogin = true
            }
        }
    }
}

#Preview {
    TelaCarregamento()
}
