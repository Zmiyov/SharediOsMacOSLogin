//
//  LoginButtonModifier.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import SwiftUI

struct LoginButtonModifier: ViewModifier {
    
    @EnvironmentObject var homeData: LoginViewModel
    
    func body(content: Content) -> some View {
        return content
            .aspectRatio(contentMode: .fit)
            .frame(width: homeData.isMacOS ? 16 : 20)
            .foregroundStyle(.white)
            .padding(12)
            .background(LinearGradient(gradient: Gradient(colors: [Color.gradient1, Color.gradient2]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .clipShape(Circle())
    }
}
