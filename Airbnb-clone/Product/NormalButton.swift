//
//  NormalButton.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 31.08.2024.
//

import SwiftUI

struct NormalButton: View {
    var onTap: () -> Void
    var title: String
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(title)
                    .montserrat(size: 16)
                    .bold()
                Spacer()
            }
                .tint(.white)
                
                .padding(.all,16)

        }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(Color("Primary01"))
            .cornerRadius(15)

    }
}
#Preview {
    NormalButton(onTap: {
        
    }, title: "Continue")
}
