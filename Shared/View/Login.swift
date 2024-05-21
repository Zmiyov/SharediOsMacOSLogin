//
//  Login.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import SwiftUI

struct Login: View {
    @EnvironmentObject var homeData: LoginViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18, content: {
            Text("Please Login")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.black)
            
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
            
            HStack{
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Forgot Details")
                        .font(.caption)
                        .fontWeight(.bold)
                })
                
                Spacer()
                
                Button(action: {
                    //Going to register page...
                    withAnimation {
                        homeData.goToRegister.toggle()
                    }
                }, label: {
                    Text("Create Account")
                        .font(.caption)
                        .fontWeight(.bold)
                })
            }
            .foregroundStyle(.gray)
        })
        .modifier(LoginViewModifier())
    }
}

#Preview {
    Login()
}
