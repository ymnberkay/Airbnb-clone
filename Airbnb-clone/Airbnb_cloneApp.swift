//
//  Airbnb_cloneApp.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    return true
  }
}

@main
struct Airbnb_cloneApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @ObservedObject var viewModel = LoginSignupViewModel()
    let nav = NavigationControllers()
    let router = CheckoutViewsRouter()
    
    init() {
        FirebaseApp.configure()
    }
   
    
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
