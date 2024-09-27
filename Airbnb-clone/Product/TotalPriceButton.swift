//
//  TotalPriceButton.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 27.09.2024.
//

import Foundation
import SwiftUI

struct TotalPriceButton: View {
    var onTap: () -> Void
    
    var body: some View {
        
        HStack(spacing: -40) {
            VStack(alignment: .leading) {
                Text("Display total price")
                    .montserrat(size: 16)
                    .bold()
                Text("Include all fees, before taxes")
                    .montserrat(size: 13)
                    .lineLimit(1)
                    .opacity(0.7)
                
            }
            Toggle(isOn: .constant(true), label: {
                
            })
        }
        .padding(.all)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.horizontal)
        
    }
}

#Preview {
    TotalPriceButton(onTap: {})
}
