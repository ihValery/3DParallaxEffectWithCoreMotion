//
//  SwipeToNext.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 12.11.22.
//

import SwiftUI

//MARK: - SwipeToNext

struct SwipeToNext: View {
//
    @GestureState private var isTapped = false
//
//        var body: some View {
//
//            let tap = DragGesture(minimumDistance: 0)
//                .updating($isTapped) { (_, isTapped, _) in
//                    isTapped = true
//                }
//
//            return Text("Tap me!")
//                .foregroundColor(isTapped ? .red: .black)
//                .gesture(tap)
//        }
//    }
    
    //MARK: Properties

    @State private var location: CGPoint = .zero
    @State private var fingerLocation: CGPoint?
    @GestureState private var isDragging = false

    @State private var circleLocation: CGPoint?

    var body: some View {
        let tap = DragGesture(minimumDistance: 0)
            .updating($isTapped) { (_, isTapped, _) in
                isTapped = true
            }
            .onChanged { value in
                circleLocation = value.location
            }
        
        ZStack {
            Text("Шлейф")
                .font(.title)
                .fontWidth(.expanded)
            
//            if isTapped,
            if let circleLocation = circleLocation {
                Circle()
                    .fill(.red)
                    .frame(width: 80, height: 80)
                    .position(circleLocation)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .gesture(tap)
        
        
    

        
//        .onTapGesture(coordinateSpace: .global) { location in
//            circleLocation = location
//            print("\(location.debugDescription)")
//        }
        
        
        
        
        
        
        
//        VStack {
//            Text("\(isDragging.description)")
//
//            ZStack {
//                Color.green
//                    .gesture(
//                        DragGesture(minimumDistance: 0.1)
//                            .updating($isDragging, body: { value, state, transaction in
//                                state = true
//                            })
//                            .onChanged({ value in
//                                location = value.location
//                                fingerLocation = value.location
//                            })
//                            .onEnded({ _ in
//                                fingerLocation = nil
//                                location = .zero
//                            })
//                    )
//
//                if let fingerLocation = fingerLocation {
//                    RoundedRectangle(cornerRadius: 50)
////                    Circle()
//                        .stroke(.red, lineWidth: 2)
//                        .frame(width: 45, height: 45 + location.y)
//                        .position(fingerLocation)
//                }
//
//            }
//        }
        
//        ZStack {
//            RoundedRectangle(cornerRadius: 15)
//                .fill(.red)
//                .frame(width: 100, height: 100)
//                .position(location)
//
//            Color.gray.opacity(0.2)
//                .gesture(
//                    DragGesture()
//                        .onChanged({ value in
//                            location = value.location
//                            fingerLocation = value.location
//                        })
//                        .onEnded({ _ in
//                            fingerLocation = nil
//                        })
//                )
//
//            if let fingerLocation = fingerLocation {
//                Circle()
//                    .stroke(.green, lineWidth: 2)
//                    .frame(width: 45, height: 45)
//                    .position(fingerLocation)
//            }
//        }
//        .ignoresSafeArea()
    }
}

//MARK: - PreviewProvider

struct SwipeToNext_Previews: PreviewProvider {
    static var previews: some View {
        SwipeToNext()
    }
}
