//
//  AppleButton.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 31.08.2024.
//

import SwiftUI

struct AppleButton: View {
    var onTap:() -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                
            }
            .padding(.all)
            
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.black)
        .cornerRadius(15)
        
    }
}

#Preview {
    AppleButton {
        
    }
}
