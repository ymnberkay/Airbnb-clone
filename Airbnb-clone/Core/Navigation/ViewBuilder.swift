//
//  ViewBuilder.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import Foundation
import SwiftUI

protocol ViewBuilder {
    func makeView<T: View>(_ view: T, withNavigationTitle title: String, navBarHidden: Bool) -> UIViewController
}
