//
//  MotionAnimationView.swift
//  RitzHike
//
//  Created by Monica on 2024-08-15.
//

import SwiftUI

struct MotionAnimationView: View {
    
    
    // MARK: - Properties
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    // MARK: - Funtions
    
    
    // MARK: - Random coordinate
    
    func randomCoordinate() -> CGFloat {
        
        return CGFloat.random(in: 0...256)
    }
    // MARK: - Random Size
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    // MARK: - Random scale
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // MARK: - Random speed
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    // MARK: - Random delay
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id:\.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation (
                            .interpolatingSpring(Spring(stiffness: 0.25, damping: 0.25))
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                            isAnimating = true
                        }
                    })
                    .frame(width: randomSize())
            }
            
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
            .background(
            Circle()
                .fill(.teal)
            )

    }
    
}
