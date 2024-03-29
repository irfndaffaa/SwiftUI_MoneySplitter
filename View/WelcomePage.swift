//
//  WelcomePage.swift
//  Money_Splitter
//
//  Created by Irfandio Daffa on 16/11/20.
//

import SwiftUI

struct WelcomePage: View {
    
    var body: some View {
        VStack{
            Image("welcomeImg")
                .resizable()
                .frame(width: 265, height: 235)
                .padding(.top,50)
            
            Text("Welcome")
                .font(Font.custom("Poppins-Bold", size: 28))
                .padding(.top,20)
            
            Text("Let's get started to manage your finance and have a better lifestyle")
                .font(Font.custom("Poppins-Light", size: 13))
                .multilineTextAlignment(.center)
                .padding([.leading,.trailing], 56)
                .padding(.top,8)
            
            HStack{
                VStack(alignment: .center){
                    NavigationLink(destination: RegisterView()) {
                        Text("Sign Up")
                            .font(Font.custom("Poppins-Bold", size: 14))
                            .foregroundColor(.white)
                            .padding([.top,.bottom],14)
                            .padding([.leading,.trailing],23)
                            .background(Color("DarkPrimary"))
                            .cornerRadius(20)
                            .shadow(color: Color("DarkPrimary"), radius: 4, x: 2, y: 4)
                    }.navigationBarHidden(true)
                }
                .padding(.trailing,10)
                
                VStack(alignment: .center){
                    NavigationLink(destination: HomeView()) {
                        Text("Login")
                            .font(Font.custom("Poppins-Bold", size: 14))
                            .foregroundColor(.black)
                            .padding([.top,.bottom],14)
                            .padding([.leading,.trailing],23)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color("darkShadow"), radius: 4, x: 1, y: 2)
                    }
                    .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1)
                        )
                    .navigationBarHidden(true)
                }
            }
            .padding(.top,25)
            
            HStack{
                Rectangle()
                    .fill(Color("BlackPrimary"))
                    .frame(width: 70, height: 1)
                
                Text("Or continue with")
                    .font(Font.custom("Poppins-Light", size: 13))
                    .foregroundColor(Color("BlackPrimary"))
                
                Rectangle()
                    .fill(Color("BlackPrimary"))
                    .frame(width: 70, height: 1)
            }
            .padding(.top, 20)
            .padding([.leading, .trailing], 45)
            
            HStack{
                Image("Google")
                    .resizable()
                    .frame(width: 35.26, height: 36)
                    .padding(.trailing, 48.74)
                
                Image("Facebook")
                    .resizable()
                    .frame(width: 35.26, height: 36)
            }
            .padding(.top,25)
            .padding(.bottom, 40)
        }
        .frame(width: UIScreen.main.bounds.width-30, alignment: .center)
    }
}
