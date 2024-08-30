//
//  CustomHostingController.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import Foundation
import SwiftUI

class CustomHostingController<Content>: UIHostingController<AnyView> where Content: View {

    public init(rootView: Content, navigationBarTitle: String, navigationBarHidden: Bool) {
        super.init(rootView: AnyView(rootView.navigationBarHidden(navigationBarHidden)))
        self.title = navigationBarTitle
    }

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
