//
//  MotionManager.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 4.11.22.
//

import SwiftUI
import CoreMotion

class MotionManager: ObservableObject {
    
    // Motion Manager Properties
    @Published var manager: CMMotionManager = .init()
    
    @Published var coordinateValue: CGFloat = 0
//    @Published var yValue: CGFloat = 0
    
    func detectMotion() {
        
        if !manager.isDeviceMotionActive {
            //For Memory Usage
            //I'm Limiting at to 40 FPS Per sec
            manager.deviceMotionUpdateInterval = 1/40 
            
            manager.startDeviceMotionUpdates(to: .main) { [weak self] motion, error in
                if let attitude = motion?.attitude {
                    self?.coordinateValue = attitude.roll
                    print(attitude.roll)
                }
            }
        } else {
            print("class MotionManager: ObservableObjecte { - 28")
        }
    }
    
    func stopMotionUpdate() {
        manager.stopDeviceMotionUpdates()
    }
}
