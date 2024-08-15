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
            
            VStack {
              //MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                        .foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        Button {
                            print("button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjouable outdoor activity for friends and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                // MARK: - Main Content
                
                
                
                
                
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
                // MARK: - Footer
                
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
