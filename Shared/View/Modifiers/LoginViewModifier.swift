//
//  LoginViewModifier.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import SwiftUI

struct LoginViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        return content
            .padding()
            .padding(.bottom)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .padding(.vertical)
            .padding(.bottom, 10)
            .padding(.horizontal, 25)
    }
}
