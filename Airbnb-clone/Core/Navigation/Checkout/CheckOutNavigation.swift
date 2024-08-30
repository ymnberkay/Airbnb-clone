//
//  CheckOutNavigation.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import Foundation
import UIKit
import SwiftUI

final class CheckoutView: ViewBuilder {
    
    static let builder = CheckoutView()
    
    private init() {}
    
    func makeView<T: View>(_ view: T, withNavigationTitle title: String, navBarHidden: Bool) -> UIViewController {
        CustomHostingController(rootView: view, navigationBarTitle: title, navigationBarHidden: navBarHidden)
    }
}

final class CheckoutViewsRouter: Router {
    var nav: UINavigationController?
    
    func pushTo(view: UIViewController) {
        nav?.pushViewController(view, animated: true)
    }
    
    func popTo(view: UIViewController) {
        nav?.popToViewController(view, animated: true)
    }
}
