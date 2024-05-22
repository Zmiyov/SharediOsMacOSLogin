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
                title: {
                    Text("Please Register")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                },
                icon: { 
                    //Back button
                    Button(action: {
                        withAnimation {
                            homeData.goToRegister.toggle()
                        }
                    }, label: {
                        Image("right")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20, height: 20)
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.black)
                            .rotationEffect(.init(degrees: 180))
                    })
                    .buttonStyle(PlainButtonStyle())
                })
            
            Label(
                title: { TextField("Enter Email", text: $homeData.email)
                    .textFieldStyle(PlainTextFieldStyle()) },
                icon: { Image(systemName: "envelope").frame(width: 30) }
            )
            .foregroundStyle(.gray)
            
            Divider()
            
            Label(
                title: { TextField("Password", text: $homeData.password)
                    .textFieldStyle(PlainTextFieldStyle()) },
                icon: { Image(systemName: "lock").frame(width: 30) }
            )
            .foregroundStyle(.gray)
            
            Divider()
            
            Label(
                title: { TextField("Re-enter password", text: $homeData.reEnter)
                    .textFieldStyle(PlainTextFieldStyle()) },
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
