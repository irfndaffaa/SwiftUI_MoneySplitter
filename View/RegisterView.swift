//
//  RegisterView.swift
//  Money_Splitter
//
//  Created by Irfandio Daffa on 17/11/20.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
//    @State var newname: String = ""
//    @State var newemail: String = ""
//    @State var newpassword: String = ""
    
    @State var visible = false
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("Sign Up")
                    .font(Font.custom("Poppins-Bold", size: 28))
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
                
                Text("Register to create your new account")
                    .font(Font.custom("Poppins-Light", size: 13))
                    .foregroundColor(.black)
                    .padding(.top,8)
                
                VStack(alignment: .leading){
                    Text("Name")
                        .font(Font.custom("Poppins-Light", size: 10))
                        .foregroundColor(.black)
                    
                    TextField("Name", text: $name)
                        .font(Font.custom("Poppins-Light", size: 10))
                        .foregroundColor(.black)
                        .autocapitalization(.none)
                    
                    HStack{
                        Rectangle()
                            .fill(Color("DarkPrimary"))
                            .frame(height: 1)
                    }
                }
                .padding(.top,41)
                
                VStack(alignment: .leading){
                    Text("Email")
                        .font(Font.custom("Poppins-Light", size: 10))
                        .foregroundColor(.black)
                    
                    TextField("Email", text: $email)
                        .font(Font.custom("Poppins-Light", size: 10))
                        .foregroundColor(.black)
                        .autocapitalization(.none)
                    
                    HStack{
                        Rectangle()
                            .fill(Color("DarkPrimary"))
                            .frame(height: 1)
                    }
                }
                .padding(.top,14)
                
                VStack(alignment: .leading){
                    Text("Password")
                        .font(Font.custom("Poppins-Light", size: 10))
                        .foregroundColor(.black)
                    
                    HStack(spacing: 15){
                        VStack{
                            if self.visible{
                                TextField("Password", text: $password)
                                    .font(Font.custom("Poppins-Light", size: 10))
                                    .autocapitalization(.none)
                            } else {
                                SecureField("Password", text: $password)
                                    .font(Font.custom("Poppins-Light", size: 10))
                                    .autocapitalization(.none)
                            }
                        }
                        Button(action: {
                            self.visible.toggle()
                        }) {
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.black)
                        }
                    }
                    
                    HStack{
                        Rectangle()
                            .fill(Color("DarkPrimary"))
                            .frame(height: 1)
                    }
                }
                .padding(.top,14)
                .padding(.bottom,56)
                
                NavigationLink(destination: WelcomePage()) {
                    HStack(){
                        Spacer()
                        
                        Text("Register")
                            .font(Font.custom("Poppins-Bold", size: 16))
                            .foregroundColor(.white)
                            .padding([.top,.bottom],12)
                        
                        
                        Spacer()
                    }
                    .background(Color("DarkPrimary"))
                    .cornerRadius(15)
                    .shadow(color: Color("DarkPrimary"), radius: 2, x: 0, y: 4)
                }
                
                Spacer(minLength: 0)
                
                
            }
            .padding([.leading,.trailing],40)
            .padding(.top,92)
            .padding(.bottom,35)
            
            Spacer(minLength: 0)
        }.navigationBarHidden(true)
    }
}
