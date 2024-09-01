//
//  LoginSignupViewModel.swift
//  Airbnb-clone
//
//  Created by Berkay Yaman on 31.08.2024.
//

import Foundation

class LoginSignupViewModel: ObservableObject {
    @Published var selectedCountry: Country = Country(name: "United States", code: "+1")
    @Published var phoneNumber = ""

    
    
}
