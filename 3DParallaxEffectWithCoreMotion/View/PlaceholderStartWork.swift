//
//  PlaceholderStartWork.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 6.11.22.
//

import SwiftUI

struct PlaceholderStartWork: View {
    var body: some View {
        ZStack {
//            Material.ultraThick
//            Color.black
//                .opacity(0.7)
            
            Text("Hello")
                .foregroundColor(.white)
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(.ultraThinMaterial)
        .background(
            ZStack {
                Image("AfricaBackground")
                    .resizable()
                
                Image("Africa1Origenal")
                    .resizable()
            }
        )
    }
}

struct PlaceholderStartWork_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderStartWork()
    }
}
