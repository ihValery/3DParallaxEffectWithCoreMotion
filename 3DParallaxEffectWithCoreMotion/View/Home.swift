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
                    .offset(x: motionManager.pitch * 75,
                            y: -motionManager.roll * 75)
                    .opacity(0.4)
                    .blendMode(.multiply)
                
                Image("Africa-3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .offset(x: motionManager.coordinateValue * 7)
                
                /*
                Circle()
                    .stroke(Color.green, style: StrokeStyle(lineWidth: 1, lineCap: .round, dash: [20, 25]))
                    .frame(width: 99, height: 99)

                Circle()
                    .frame(width: 100, height: 100)
                    .offset(x: motionManager.pitch * 75,
                            y: -motionManager.roll * 75)
                 */
                
                VStack {
                    Text("\(motionManager.pitch)")
                    Text("\(motionManager.roll)")
                }
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
