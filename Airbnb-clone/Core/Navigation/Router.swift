//
//  Router.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import Foundation
import UIKit
import Combine

protocol Router: ObservableObject {
    var nav: UINavigationController? { get set }
    func pushTo(view: UIViewController)
    func popTo(view: UIViewController)
    func popToRoot()
}

extension Router {
    func popToRoot() {
        nav?.popToRootViewController(animated: true)
    }
}

