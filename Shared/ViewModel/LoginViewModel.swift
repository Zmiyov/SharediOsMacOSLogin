//
//  LoginViewModel.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    //Register
    @Published var reEnter = ""
    
    //For go to registration page
    @Published var goToRegister = false
    
    
    
}
