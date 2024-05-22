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
        HStack(alignment: .bottom, spacing: 0) {
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
                
                
                if !homeData.isMacOS {
                    SideLoginView()
                }
            }
            if homeData.isMacOS {
                SideLoginView()
            }
        }
        .frame(maxHeight: .infinity)
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        .frame(width: homeData.isMacOS ? homeData.screen.width / 2 : nil, height: homeData.isMacOS ?  homeData.screen.height / 2 : nil)
        .environmentObject(homeData)
    }
}

#Preview {
    Home()
}

struct SideLoginView: View {
    
    @EnvironmentObject var homeData: LoginViewModel
    
    var body: some View {
        ZStack{

            if homeData.goToRegister {
                Register()
                    .transition(homeData.isMacOS ? .move(edge: .trailing) : .scale)
            } else {
                Login()
                    .transition(homeData.isMacOS ? .move(edge: .trailing) : .scale)
                
            }
        }
        .overlay (
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("right")
                    .renderingMode(.template)
                    .resizable()
                    .modifier(LoginButtonModifier())
            })
            .buttonStyle(PlainButtonStyle())
            .offset(x: -65)
            ,alignment: .bottomTrailing
        )
    }
}
