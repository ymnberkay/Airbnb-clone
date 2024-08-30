//
//  LoginSignupView.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import SwiftUI

struct LoginSignupView: View {
    @State private var selectedCountry = "India (+91)"
    @State private var phoneNumber = ""
    
    let countries = ["India (+91)", "USA (+1)", "UK (+44)", "Germany (+49)", "France (+33)"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Welcome to Airbnb")
                .montserrat(size: 22)
                .bold()
                .padding()
            
            VStack {
                HStack {
                    Picker("Country/Region", selection: $selectedCountry) {
                        ForEach(countries, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding(.leading)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .padding(.trailing)
                }
                
                Divider()
                    .background(Color.black)
                
                TextField("Phone number", text: $phoneNumber)
                    .padding(.leading)
                    .frame(height: 44)
                    .background(Color.clear)
                    .padding()
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            Text("We’ll call or text you to confirm your number. Standard message and data rates apply. ")
                        .foregroundColor(.black)
                        .montserrat(size: 14)
            NormalButton(onTap: {
                
            }, title: "Continue")
            
            Divider()
                .padding()
            
            SignupButton(onTap: {
                
            }, title: "Continue with Facebook", image: "facebook")
            
            SignupButton(onTap: {
                
            }, title: "Continue with Google", image: "google")
            
            SignupButton(onTap: {
                
            }, title: "Continue with Apple", image: "apple-logo")
            
            SignupButton(onTap: {
                
            }, title: "Continue with Email", image: "apple-logo")
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Text("Need Help?")
                        .foregroundColor(.black)
                        .montserrat(size: 16)
                })
                Spacer()
            }
        }
        
        .padding()
    }
}

#Preview {
    LoginSignupView()
}
