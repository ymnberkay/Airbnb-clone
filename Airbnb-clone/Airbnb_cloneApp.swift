//
//  Airbnb_cloneApp.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import SwiftUI

@main
struct Airbnb_cloneApp: App {
    
    let nav = NavigationControllers()
    let router = CheckoutViewsRouter()
    
    @ObservedObject var viewModel = LoginSignupViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootNavigationController(nav: nav.checkoutNavigationController, rootView: LoginSignupView(viewModel: viewModel), navigationBarTitle: "Airbnb")
                .environmentObject(router)
                .onAppear {
                    router.nav = nav.checkoutNavigationController
                }
        }
    }
}
