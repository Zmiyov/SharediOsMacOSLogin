//
//  LoginViewModel.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    //Register
    @Published var reEnter = ""
    
    //For go to registration page
    @Published var goToRegister = false
    
    //MacOS Data
    var screen: CGRect {
        #if os(iOS)
        return UIScreen.main.bounds
        #else
        return NSScreen.main!.visibleFrame
        #endif
    }
    
    //detecting for MacOS
    @Published var isMacOS = false
    
    init() {
#if !os(iOS)
        self.isMacOS = true
#endif
    }
    
    //Clearing data when going to login
    
    func clearData() {
        email = ""
        password = ""
        reEnter = ""
    }
}
