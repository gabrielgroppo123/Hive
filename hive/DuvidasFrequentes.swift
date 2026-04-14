import SwiftUI

struct DuvidasFrequentes: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Dúvidas Frequentes")
                .font(Font.custom("Parkinsans", size: 31))
                .fontWeight(.bold)
                .foregroundColor(Color("corPrincipal"))
                .padding(.horizontal, 35)
                .padding(.bottom, 35)
                .padding(.top, 20)
            
            
            VStack(spacing: 16) {
                ItemFAQ(
                    pergunta: "Até que horas posso pagar um boleto on-line?",
                    resposta: "Boletos no vencimento podem ser pagos até as 21h–22h, conforme o banco. Boletos vencidos há até 60 dias também podem ser pagos pelo app, já com juros e multa."
                )
                ItemFAQ(
                    pergunta: "Realizei um pagamento errado, como posso reverter?",
                    resposta: "Entre em contato com nossa central de ajuda em até 24h após a transação."
                )
                ItemFAQ(
                    pergunta: "Por que meu cartão foi recusado?",
                    resposta: "Seu cartão pode ser recusado por saldo insuficiente, dados incorretos ou bloqueio de segurança."
                )
            }
            .padding(.horizontal, 35)
            
            Spacer()
            
            // Central de ajuda
            HStack {
                Image("duvida")
                Text("Central de ajuda")
                    .font(Font.custom("Rubik", size: 18))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 35)
            .padding(.bottom, 50)
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
    NavigationStack { DuvidasFrequentes() }
}
