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
                Image("Africa-1")
                    .resizable()

                Image("Africa-2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .blendMode(.multiply)
                    .offset(x: motionManager.pitch * 75,
                            y: -motionManager.roll * 75)
                    .animation(.interactiveSpring(), value: motionManager.pitch)

                Image("Africa-3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                
                ZStack {
                    Image("Africa-1")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .mask(Circle().strokeBorder())
                        .shadow(radius: 2)
                    
                    Image("Africa-1")
                        .frame(width: 10, height: 10)
                        .mask(Circle())
                        .shadow(radius: 2)
                        .offset(x: motionManager.pitch * 75,
                                y: -motionManager.roll * 75)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
                
                VStack {
                    Text("\(motionManager.pitch)")
                    Text("\(motionManager.roll)")
                }
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top)
            }
            .ignoresSafeArea()
            .onAppear(perform: motionManager.detectMotion)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
