//
//  One3DCard.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 7.11.22.
//

import SwiftUI

//MARK: - One3DCard

struct One3DCard: View {
    
    //MARK: Properties
    
    private let imageName: String
    
    private let offset: CGPoint

    //MARK: Initializer
    
    init(imageName: String, offset: CGPoint) {
        self.imageName = imageName
        self.offset = offset
    }

    //MARK: Body

    var body: some View {
        ZStack {
            Image("AfricaBackground")
                .resizable()
                .aspectRatio(contentMode: .fit)

            Image("Africa3Shadow")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.4)
                .blendMode(.multiply)
//                .offset(x: xValue * 20, y: yValue * 20)
            
            Image("Africa3Origenal")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .offset(x: xValue * 25, y: yValue * 25)
            
            Image("Africa2Shadow")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.4)
                .blendMode(.multiply)
//                .offset(x: xValue * 45, y: yValue * 45)
            
            Image("Africa2Origenal")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .offset(x: xValue * 35, y: yValue * 35)

            Image("Africa1Shadow")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.4)
                .blendMode(.multiply)
//                .offset(x: xValue * 75, y: yValue * 75)

            Image("Africa1Origenal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(1.0)
//                .offset(x: xValue * 10, y: yValue * 10)
        }
        .ignoresSafeArea()
//        .animation(.interactiveSpring(), value: xValue)
    }
}

//MARK: - PreviewProvider

struct One3DCard_Previews: PreviewProvider {
    static var previews: some View {
        One3DCard(imageName: "Africa", offset: .zero)
    }
}

//MARK: - DefaultImage

fileprivate struct DefaultImage: View {
    
    //MARK: Properties
    
    private let imageName: String
    
    //MARK: Initializer
        
    init(imageName: String) {
        self.imageName = imageName
    }

    //MARK: Body

    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(0.4)
            .blendMode(.multiply)
    }
}
