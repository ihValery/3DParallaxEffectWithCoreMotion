//
//  Home.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 4.11.22.
//

import SwiftUI

struct Home: View {
    
    @StateObject var motionManager: MotionManager = .init()
    
    var body: some View {
            ZStack {
                Image("AfricaBackground")
                    .resizable()

                Image("Africa3Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: motionManager.pitch * 20,
                            y: -motionManager.roll * 20)
                    .animation(.interactiveSpring(), value: motionManager.pitch)
                
                Image("Africa3Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: motionManager.pitch * 20,
                            y: -motionManager.roll * 20)
                
                Image("Africa2Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: motionManager.pitch * 45,
                            y: -motionManager.roll * 45)
                    .animation(.interactiveSpring(), value: motionManager.pitch)
                
                Image("Africa2Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: motionManager.pitch * 45,
                            y: -motionManager.roll * 45)

                Image("Africa1Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: motionManager.pitch * 75,
                            y: -motionManager.roll * 75)
                    .animation(.interactiveSpring(), value: motionManager.pitch)

                Image("Africa1Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .overlay(alignment: .topTrailing) {
                MotionIndicator(xValue: motionManager.pitch * 75,
                                yValue: -motionManager.roll * 75)
            }
            .ignoresSafeArea()
            .onAppear(perform: motionManager.detectMotion)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
