//
//  HomeCategoryButton.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 27.09.2024.
//

import SwiftUI

struct HomeCategoryButton: View {
    var title: String
    var image: String
    var onTap:() -> Void
    @State var clicked: Bool
    
    var body: some View {
        Button(action: {
            onTap()
        }, label: {
            VStack{
                Image(systemName: image)
                    .foregroundColor(.black)
                Text(title)
                    .padding()
                    .montserrat(size: 11)
                    .foregroundColor(.black)
                    .bold()
                    .lineLimit(1)
            }
        })
    }
}

#Preview {
    HomeCategoryButton(title: "Deneme", image: "view.3d", onTap: {}, clicked: true)
}
