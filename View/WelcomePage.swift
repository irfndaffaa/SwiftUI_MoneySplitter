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
                .frame(width: 295, height: 267)
                .padding(.top,60)
            
            Text("Welcome")
                .font(Font.custom("Poppins-Bold", size: 28))
                .padding(.top,25)
            
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
                    Text("Login")
                        .font(Font.custom("Poppins-Bold", size: 14))
                        .foregroundColor(.black)
                        .padding([.top,.bottom],14)
                        .padding([.leading,.trailing],23)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: Color("darkShadow"), radius: 4, x: 1, y: 2)
                }
            }
            .padding(.top,34)
            
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
            .padding([.leading, .trailing], 56)
            
            HStack{
                Image("Google")
                    .resizable()
                    .frame(width: 35.26, height: 36)
                    .padding(.trailing, 48.74)
                
                Image("Facebook")
                    .resizable()
                    .frame(width: 35.26, height: 36)
            }
            .padding(.top,30)
            .padding(.bottom, 40)
        }
    }
}
