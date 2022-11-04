//
//  MotionIndicator.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 5.11.22.
//

import SwiftUI

struct MotionIndicator: View {
    
    private var imageName: String = "AfricaBackground"
    private var xValue: Double
    private var yValue: Double
    
    init(xValue: Double, yValue: Double) {
        self.xValue = xValue
        self.yValue = yValue
    }
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .frame(width: 80, height: 80)
                .mask(Circle().strokeBorder())
                .shadow(radius: 2)
            
            Image(imageName)
                .frame(width: 10, height: 10)
                .mask(Circle())
                .shadow(radius: 2)
                .offset(x: xValue, y: yValue)
        }
        .padding()
    }
}

struct MotionIndicator_Previews: PreviewProvider {
    static var previews: some View {
        MotionIndicator(xValue: 0, yValue: 0)
    }
}
