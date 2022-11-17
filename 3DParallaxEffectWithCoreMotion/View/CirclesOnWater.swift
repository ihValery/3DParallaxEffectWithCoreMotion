//
//  CirclesOnWater.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 17.11.22.
//

import SwiftUI

//MARK: - CirclesOnWater

struct CirclesOnWater: View {
    
    //MARK: Properties
    
    @State private var isOn: Bool = false

    //MARK: Body

    var body: some View {
        VStack {
            Spacer()
            
            Circle()
                .stroke(.gray, lineWidth: isOn ? 1 : 100)
                .frame(width: 90, height: 90)
                .scaleEffect(isOn ? 1 : 0)
                .opacity(isOn ? 1 : 0)
            
                .animation(.easeInOut(duration: 1.3), value: isOn)
            

            Spacer()

            buttonStart()
        }
    }
    
    private func buttonStart() -> some View {
        Button {
            isOn.toggle()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isOn.toggle()
            }
            
        } label: {
            HStack {
                Text("START        \(isOn.description.uppercased())")
                    .foregroundColor(.white)
                    .bold()
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(
                RoundedRectangle(cornerRadius: 13)
                    .fill(.gray)
            )
            .padding()
        }
    }
}

//MARK: - PreviewProvider

struct CirclesOnWater_Previews: PreviewProvider {
    static var previews: some View {
        CirclesOnWater()
    }
}
