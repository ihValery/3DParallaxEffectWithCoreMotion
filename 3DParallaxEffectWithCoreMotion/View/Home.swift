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
                
                Image("Africa3Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: motionManager.pitch * 25,
                            y: -motionManager.roll * 25)
                
                Image("Africa2Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: motionManager.pitch * 45,
                            y: -motionManager.roll * 45)
                
                Image("Africa2Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: motionManager.pitch * 35,
                            y: -motionManager.roll * 35)

                Image("Africa1Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: motionManager.pitch * 75,
                            y: -motionManager.roll * 75)

                Image("Africa1Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .offset(x: motionManager.pitch * 10,
//                            y: -motionManager.roll * 10)
            }
            .animation(.interactiveSpring(), value: motionManager.pitch)
            .overlay(alignment: .topTrailing) {
                MotionIndicator(xValue: motionManager.pitch * 75,
                                yValue: -motionManager.roll * 75)
                .padding(.top, 5)
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
