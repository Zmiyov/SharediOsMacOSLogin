//
//  Register.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import SwiftUI

struct Register : View {
    @EnvironmentObject var homeData: LoginViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18, content: {

            
            Label(
                title: { TextField("Enter Email", text: $homeData.email) },
                icon: { Image(systemName: "envelope").frame(width: 30) }
            )
            .foregroundStyle(.gray)
            
            Divider()
            
            Label(
                title: { TextField("Password", text: $homeData.password) },
                icon: { Image(systemName: "lock").frame(width: 30) }
            )
            .foregroundStyle(.gray)
            
            Divider()
            
            Label(
                title: { TextField("Re-enter password", text: $homeData.reEnter) },
                icon: { Image(systemName: "lock").frame(width: 30) }
            )
            .foregroundStyle(.gray)
            

        })
        .modifier(LoginViewModifier())
    }
}

#Preview {
    Register()
}
