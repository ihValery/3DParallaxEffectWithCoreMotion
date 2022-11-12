//
//  SwipeToNext.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 12.11.22.
//

import SwiftUI

//MARK: - SwipeToNext

struct SwipeToNext: View {
    
    //MARK: Properties
    
    @State private var location: CGPoint = .init(x: 100, y: 100)
    @State private var fingerLocation: CGPoint?

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(.red)
                .frame(width: 100, height: 100)
                .position(location)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            location = value.location
                            fingerLocation = value.location
                        })
                        .onEnded({ _ in
                            fingerLocation = nil
                        })
                )
        
            if let fingerLocation = fingerLocation {
                Circle()
                    .stroke(.green, lineWidth: 2)
                    .frame(width: 45, height: 45)
                    .position(fingerLocation)
            }
        }
        .ignoresSafeArea()
    }
}

//MARK: - PreviewProvider

struct SwipeToNext_Previews: PreviewProvider {
    static var previews: some View {
        SwipeToNext()
    }
}
