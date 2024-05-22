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
                title: { TextField("Enter Email", text: $homeData.email)
                    .textFieldStyle(PlainTextFieldStyle()) },
                icon: { Image(systemName: "envelope").frame(width: 30) }
            )
            .foregroundStyle(.gray)
            
            Divider()
            
            Label(
                title: { SecureField("Password", text: $homeData.password)
                    .textFieldStyle(PlainTextFieldStyle()) },
                icon: { Image(systemName: "lock").frame(width: 30) }
            )
            .overlay(
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "eye")
                        .foregroundStyle(.gray)
                })
                .buttonStyle(PlainButtonStyle())
                ,alignment: .trailing
            )
            
            Divider()
            
            HStack{
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Forgot Details")
                        .font(.caption)
                        .fontWeight(.bold)
                })
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: {
                    homeData.clearData()
                    //Going to register page...
                    withAnimation {
                   
                        homeData.goToRegister.toggle()
                    }
                }, label: {
                    Text("Create Account")
                        .font(.caption)
                        .fontWeight(.bold)
                })
                .buttonStyle(PlainButtonStyle())
            }
            .foregroundStyle(.gray)
        })
        .modifier(LoginViewModifier())
    }
}

#Preview {
    Login()
}
