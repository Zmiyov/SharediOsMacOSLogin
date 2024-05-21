//
//  Home.swift
//  SharediOsMacOSLogin
//
//  Created by Vladimir Pisarenko on 21.05.2024.
//

import SwiftUI

struct Home: View {
    @StateObject var homeData = LoginViewModel()
    
    var body: some View {
        VStack {
            
            HStack{
                
                Text("Fitness You \nWanna Have")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .padding(.leading, 25)
                
                Spacer()
            }
            .padding()
            .overlay(
                
                HStack {
                    Image("cloud")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 25)
                        .shadow(color: .black.opacity(0.09), radius: 5, x: 2, y: 5)
                        .offset(y: 50)
                    
                    Spacer()
                    
                    VStack{
                        Image("cloud")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .shadow(color: .black.opacity(0.09), radius: 5, x: 2, y: 5)
                            .offset(x: -20)
                        
                        Spacer()
                    }
                }, alignment: .bottomLeading

            )
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .padding(.horizontal)
            
            //Login register page
            
            ZStack{

                if homeData.goToRegister {
                    
                } else {
                    Login()
                }
            }
            .overlay (
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("right")
                        .renderingMode(.template)
                        .resizable()
                        .modifier(LoginButtonModifier())
                })
                .offset(x: -65)
                ,alignment: .bottomTrailing
            )
        
        }
        .frame(maxHeight: .infinity)
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        .environmentObject(homeData)
    }
}

#Preview {
    Home()
}