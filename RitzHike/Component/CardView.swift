//
//  CardView.swift
//  RitzHike
//
//  Created by Monica on 2024-08-13.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            
            CustomBackgroundView()
            
            ZStack {
                
                Circle()
                    //.fill(.indigo)
                    .fill(
                        LinearGradient(
                            colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 256, height: 256)
                
                Image("image-1")
                     .resizable()
                 .scaledToFit()
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
