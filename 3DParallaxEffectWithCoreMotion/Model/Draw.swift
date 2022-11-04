//
//  Draw.swift
//  3DParallaxEffectWithCoreMotion
//
//  Created by Валерий Игнатьев on 4.11.22.
//

import SwiftUI

struct Draw: Identifiable, Hashable {

    var id: String = UUID().uuidString
    var firstLayer: String
    var firstShadow: String
    var secondCoat: String
    var secondShade: String
    var thirdCoat: String
    var thirdShade: String
}
