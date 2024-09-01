//
//  LoginSignupView.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 30.08.2024.
//

import SwiftUI

struct LoginSignupView: View {
    @ObservedObject var viewModel: LoginSignupViewModel
    @EnvironmentObject var router: CheckoutViewsRouter
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Welcome to Airbnb")
                .montserrat(size: 22)
                .bold()
                .padding()
            
            VStack {
                HStack {
                    Picker("Country/Region", selection: $viewModel.selectedCountry) {
                        ForEach(CountryCode.countryCodes.sorted(by: <).map { (key, value) in
                            Country(name: key, code: value)
                        }, id: \.self) { country in
                            HStack {
                                Text("\(country.name) (\(country.code))")
                            }
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .montserrat(size: 16)
                    .foregroundColor(.black)
                    .padding(.all)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .padding(.trailing)
                }
                
                Divider()
                    .background(Color.black)
                
                TextField("Phone number", text: $viewModel.phoneNumber)
                    .padding(.all)
                    .background(Color.clear)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
            Text("We’ll call or text you to confirm your number. Standard message and data rates apply. ")
                .foregroundColor(.black)
                .montserrat(size: 14)
//            router.pushTo(view: CheckoutView.builder.makeView(InfoView(), withNavigationTitle: "Bilgiler", navBarHidden: false)
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
    LoginSignupView(viewModel: LoginSignupViewModel())
}
