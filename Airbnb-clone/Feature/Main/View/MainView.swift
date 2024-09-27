//
//  MainView.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 3.09.2024.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainViewViewModel
    var body: some View {
        VStack {
            FeatureButton(onTap: {
                
            }).padding(.vertical, 16)
            HStack(spacing: -10) {
                HomeCategoryButton(title: "Amazing Views", image: "view.3d", onTap: {}, clicked: true)
                HomeCategoryButton(title: "BeachFront", image: "view.3d", onTap: {}, clicked: false)
                HomeCategoryButton(title: "Country Side", image: "view.3d", onTap: {}, clicked: false)
                HomeCategoryButton(title: "Iconic Side", image: "view.3d", onTap: {}, clicked: false)
            }
            TotalPriceButton(onTap: {
                
            })
        }
    }
}

#Preview {
    MainView(viewModel: MainViewViewModel())
}
