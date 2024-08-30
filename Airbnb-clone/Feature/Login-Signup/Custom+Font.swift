//
//  Custom+Font.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import Foundation
import SwiftUI
extension View {
    func montserrat(size: CGFloat) -> some View {
        self.font(.custom("Montserrat", size: size))
    }
}
