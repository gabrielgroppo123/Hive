//
//  ContentView.swift
//  hive
//
//  Created by GABRIEL GROPPO on 31/03/26.
//
import SwiftUI
struct TelaCarregamento: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination:TelaLogin()) {
                ZStack {
                    LinearGradient(
                        colors: [
                            Color(red: 247/255, green: 54/255, blue: 109/255),
                            Color(red: 247/255, green: 108/255, blue: 100/255)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                    Image("Logo Branca")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
            }
            .buttonStyle(.plain)
        }
    }
}

#Preview {
    TelaCarregamento()
}
