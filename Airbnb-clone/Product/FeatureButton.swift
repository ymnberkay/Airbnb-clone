//
//  FeatureButton.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 3.09.2024.
//

import SwiftUI

struct FeatureButton: View {
    var onTap: () -> Void
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .background(.white)
                    .padding()
                VStack(alignment: .leading) {
                    Text("Anywhere")
                        .montserrat(size: 14)
                        .foregroundColor(.black)
                        .bold()
                    HStack {
                        Text("Anyweek")
                            .montserrat(size: 12)
                            .foregroundColor(.black)
                        Text("--Add Guest")
                            .montserrat(size: 12)
                            .foregroundColor(.black)
                    }
                }
                Spacer()
            }
            
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

#Preview {
    FeatureButton(onTap: {
        
    })
}
