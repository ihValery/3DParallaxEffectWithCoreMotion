//
//  Home.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 4.11.22.
//

import SwiftUI

struct Home: View {
    
    @StateObject var motionManager: MotionManager = .init()
    private var xValue: Double {
        motionManager.pitch
    }
    private var yValue: Double {
        -motionManager.roll - 0.87
    }
    
    var body: some View {
            ZStack {
                Image("AfricaBackground")
                    .resizable()

                Image("Africa3Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: xValue * 20,
                            y: yValue * 20)
                
                Image("Africa3Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: xValue * 25,
                            y: yValue * 25)
                
                Image("Africa2Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: xValue * 45,
                            y: yValue * 45)
                
                Image("Africa2Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: xValue * 35,
                            y: yValue * 35)

                Image("Africa1Shadow")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: xValue * 75,
                            y: yValue * 75)

                Image("Africa1Origenal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(1.01)
                    .offset(x: xValue * 10,
                            y: yValue * 10)
            }
            .animation(.interactiveSpring(), value: xValue)
            .overlay(alignment: .topTrailing) {
                MotionIndicator(xValue: xValue * 75,
                                yValue: yValue * 75)
                .padding(.top, 5)
            }
//            .overlay(alignment: .top) {
//                Text("\(motionManager.pitch) \n \(motionManager.roll)")
//                    .foregroundColor(.black)
//            }
            .ignoresSafeArea()
            .onAppear(perform: motionManager.detectMotion)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
