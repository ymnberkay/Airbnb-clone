//
//  FacebookButton.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 31.08.2024.
//

import SwiftUI

struct FacebookButton: View {
    var onTap: () -> Void
    var title: String
    var image: String
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(image)
                    .padding()
                Spacer()
                Text(title)
                    .padding()
                    .montserrat(size: 16)
                    .foregroundColor(.black)
                    .bold()
                Spacer()
            }
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1)
            )
        }
    }
}

#Preview {
    FacebookButton(onTap: {
        
    }, title: "Continue with Facebook", image: "facebook")
}
