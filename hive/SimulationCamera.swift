//
//  SimulationCamera.swift
//  hive
//
//  Created by GABRIEL GROPPO on 13/04/26.
//

import SwiftUI

public struct SimulationCamera: View{
    
    @State var optionSelected: String
    
    public var body: some View {
        
        if(optionSelected == "PIX"){
            Rectangle()
                .fill(Color(.gray))
                .overlay(
                    Image(systemName: "camera.viewfinder")
                        .font(.system(size: 60))
                        .foregroundColor(.white.opacity(0.3))
                )
                .frame(width: 250, height: 250)
                .cornerRadius(20)
        } else if(optionSelected == "CODEBAR"){
            Rectangle()
                .fill(Color(.gray))
                .overlay(
                    Image(systemName: "camera.viewfinder")
                        .font(.system(size: 60))
                        .foregroundColor(.white.opacity(0.3))
                )
                .frame(width: 350, height: 100)
                .cornerRadius(20)
        }
    }
}
#Preview {
    SimulationCamera(optionSelected: "PIX")
}
