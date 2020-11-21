//
//  HomeView.swift
//  Money_Splitter
//
//  Created by Irfandio Daffa on 17/11/20.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab = scroll_tabs[0]
    @Namespace var animation
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            GeometryReader{_ in
                VStack{
                    HStack{
                        NavigationLink(destination: WelcomePage()) {
                            Image("rijal")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .cornerRadius(15)
                        }
                        
                        Text("Hi, Choirul Rizal")
                            .font(Font.custom("Poppins-SemiBold", size: 16))
                        
                        Spacer()
                        
                        Image("more-vertical")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    .padding(.leading, 15)
                    .padding([.bottom,.trailing], 10)
                    .padding(.top,25)
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text("Available Cash")
                                .font(Font.custom("Poppins-Light", size: 13))
                                .foregroundColor(.black)
                            
                            Text("Rp 10.000.000")
                                .font(Font.custom("Poppins-SemiBold", size: 22))
                                .foregroundColor(.black)
                        }
                        
                        Spacer(minLength: 0)
                        
                        VStack{
                            HStack(alignment: .center){
                                Image("wallet")
                                    .resizable()
                                    .frame(width: 21, height: 18)
                            }
                            .padding(7)
                            .background(Color("Secondary"))
                            .cornerRadius(13)
                            
                            Text("Wallet")
                                .font(Font.custom("Poppins-Light", size: 10))
                                .foregroundColor(.black)
                        }
                        
                        VStack{
                            HStack(alignment: .center){
                                Image("bar-chart-2")
                                    .resizable()
                                    .frame(width: 21, height: 18)
                            }
                            .padding(7)
                            .background(Color("Secondary"))
                            .cornerRadius(13)
                            
                            Text("Budget")
                                .font(Font.custom("Poppins-Light", size: 10))
                                .foregroundColor(.black)
                        }
                        
                        VStack{
                            HStack(alignment: .center){
                                Image("trending-up")
                                    .resizable()
                                    .frame(width: 21, height: 18)
                            }
                            .padding(7)
                            .background(Color("Secondary"))
                            .cornerRadius(13)
                            
                            Text("Report")
                                .font(Font.custom("Poppins-Light", size: 10))
                                .foregroundColor(.black)
                        }
                    }
                    .padding([.leading, .trailing], 16)
                    
                    HStack{
                        Text("Recent Transaction")
                            .font(Font.custom("Poppins-SemiBold", size: 18))
                        
                        Spacer()
                        
                        Text("View all")
                            .font(Font.custom("Poppins-SemiBold", size: 12))
                            .foregroundColor(Color("Secondary"))
                    }
                    .padding(.top,40)
                    .padding([.leading, .trailing], 16)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8){
                            ForEach(scroll_tabs, id: \.self){tab in
                                TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
                            }
                        }
                    }
                    .padding([.leading, .trailing],10)
                    
                    ScrollView{
                        VStack(alignment: .leading){
                            
                            HStack{
                                Text("Today")
                                    .font(Font.custom("Poppins-SemiBold", size: 14))
                                
                                Spacer(minLength: 0)
                            }
                            .padding(.bottom, 8)
                            
                            HStack{
                                VStack(alignment: .leading){
                                    VStack{
                                        HStack{
                                            Image("Restourant")
                                                .resizable()
                                                .frame(width: 32, height: 32)
                                            
                                            VStack(alignment: .leading){
                                                Text("Healthy Food")
                                                    .font(Font.custom("Poppins-Light", size: 13))
                                                    .fontWeight(.medium)
                                                
                                                Text("8.45 AM")
                                                    .font(Font.custom("Poppins-Thin", size: 10))
                                            }
                                            .padding(.leading, 5)
                                            
                                            Spacer()
                                            
                                            VStack(alignment: .leading){
                                                Text("Rp 200.000")
                                                    .font(Font.custom("Poppins-Light", size: 12))
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                            }
                                        }
                                        
                                        HStack{
                                            
                                            Spacer()
                                            
                                            Rectangle()
                                                .fill(Color("Gray1"))
                                                .frame(width: 270, height: 1)
                                        }
                                    }
                                    .padding(.bottom, 10)
                                    
                                    VStack{
                                        HStack{
                                            Image("motor-payment")
                                                .resizable()
                                                .frame(width: 32, height: 32)
                                            
                                            VStack(alignment: .leading){
                                                Text("Motor Petrol")
                                                    .font(Font.custom("Poppins-Light", size: 13))
                                                    .fontWeight(.medium)
                                                
                                                Text("8.45 AM")
                                                    .font(Font.custom("Poppins-Thin", size: 10))
                                            }
                                            .padding(.leading, 5)
                                            
                                            Spacer()
                                            
                                            VStack(alignment: .leading){
                                                Text("Rp 100.000")
                                                    .font(Font.custom("Poppins-Light", size: 12))
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                            }
                                        }
                                        
                                        HStack{
                                            
                                            Spacer()
                                            
                                            Rectangle()
                                                .fill(Color("Gray1"))
                                                .frame(width: 270, height: 1)
                                        }
                                    }
                                    .padding(.bottom, 10)
                                    
                                    VStack{
                                        HStack{
                                            ZStack{
                                                Image("Rectangle-11")
                                                    .resizable()
                                                    .frame(width: 32, height: 32)
                                                
                                                Image("cofee")
                                                    .resizable()
                                                    .frame(width: 32, height: 32)
                                            }
                                            
                                            VStack(alignment: .leading){
                                                Text("Coffee")
                                                    .font(Font.custom("Poppins-Light", size: 13))
                                                    .fontWeight(.medium)
                                                
                                                Text("8.45 AM")
                                                    .font(Font.custom("Poppins-Thin", size: 10))
                                            }
                                            .padding(.leading, 5)
                                            
                                            Spacer()
                                            
                                            VStack(alignment: .leading){
                                                Text("Rp 70.000")
                                                    .font(Font.custom("Poppins-Light", size: 12))
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                            }
                                        }
                                        
            //                            HStack{
            //
            //                                Spacer()
            //
            //                                Rectangle()
            //                                    .fill(Color("Gray1"))
            //                                    .frame(width: 270, height: 1)
            //                            }
                                    }
                                }
                            }
                            .padding([.top, .bottom], 10)
                            .padding(.leading, 20)
                            .padding(.trailing, 17)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("Gray1"), lineWidth: 1)
                                )
                        }
                        .padding(.top,28)
                        .padding(.bottom, 16)
                        .padding([.leading, .trailing], 16)
                        
                        VStack(alignment: .leading){
                            
                            HStack{
                                Text("Yesterday")
                                    .font(Font.custom("Poppins-SemiBold", size: 14))
                                
                                Spacer(minLength: 0)
                            }
                            .padding(.bottom, 8)
                            
                            HStack{
                                VStack(alignment: .leading){
                                    VStack{
                                        HStack{
                                            Image("Restourant")
                                                .resizable()
                                                .frame(width: 32, height: 32)
                                            
                                            VStack(alignment: .leading){
                                                Text("Healthy Food")
                                                    .font(Font.custom("Poppins-Light", size: 13))
                                                    .fontWeight(.medium)
                                                
                                                Text("8.45 AM")
                                                    .font(Font.custom("Poppins-Thin", size: 10))
                                            }
                                            .padding(.leading, 5)
                                            
                                            Spacer()
                                            
                                            VStack(alignment: .leading){
                                                Text("Rp 200.000")
                                                    .font(Font.custom("Poppins-Light", size: 12))
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                            }
                                        }
                                        
                                        HStack{
                                            
                                            Spacer()
                                            
                                            Rectangle()
                                                .fill(Color("Gray1"))
                                                .frame(width: 270, height: 1)
                                        }
                                    }
                                    .padding(.bottom, 10)
                                    
                                    VStack{
                                        HStack{
                                            Image("motor-payment")
                                                .resizable()
                                                .frame(width: 32, height: 32)
                                            
                                            VStack(alignment: .leading){
                                                Text("Motor Petrol")
                                                    .font(Font.custom("Poppins-Light", size: 13))
                                                    .fontWeight(.medium)
                                                
                                                Text("8.45 AM")
                                                    .font(Font.custom("Poppins-Thin", size: 10))
                                            }
                                            .padding(.leading, 5)
                                            
                                            Spacer()
                                            
                                            VStack(alignment: .leading){
                                                Text("Rp 100.000")
                                                    .font(Font.custom("Poppins-Light", size: 12))
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                            }
                                        }
                                        
                                        HStack{
                                            
                                            Spacer()
                                            
                                            Rectangle()
                                                .fill(Color("Gray1"))
                                                .frame(width: 270, height: 1)
                                        }
                                    }
                                    .padding(.bottom, 10)
                                    
                                    VStack{
                                        HStack{
                                            ZStack{
                                                Image("Rectangle-11")
                                                    .resizable()
                                                    .frame(width: 32, height: 32)
                                                
                                                Image("cofee")
                                                    .resizable()
                                                    .frame(width: 32, height: 32)
                                            }
                                            
                                            VStack(alignment: .leading){
                                                Text("Coffee")
                                                    .font(Font.custom("Poppins-Light", size: 13))
                                                    .fontWeight(.medium)
                                                
                                                Text("8.45 AM")
                                                    .font(Font.custom("Poppins-Thin", size: 10))
                                            }
                                            .padding(.leading, 5)
                                            
                                            Spacer()
                                            
                                            VStack(alignment: .leading){
                                                Text("Rp 70.000")
                                                    .font(Font.custom("Poppins-Light", size: 12))
                                                    .fontWeight(.medium)
                                                
                                                Spacer()
                                            }
                                        }
                                        
            //                            HStack{
            //
            //                                Spacer()
            //
            //                                Rectangle()
            //                                    .fill(Color("Gray1"))
            //                                    .frame(width: 270, height: 1)
            //                            }
                                    }
                                }
                            }
                            .padding([.top, .bottom], 10)
                            .padding(.leading, 20)
                            .padding(.trailing, 17)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("Gray1"), lineWidth: 1)
                                )
                        }
                        .padding(.bottom, 16)
                        .padding([.leading, .trailing], 16)
                    }
                    
                    Spacer(minLength: 0)
                }
            }
            
            FloatingButtonView()
                .padding(.trailing, 25)
                .padding(.bottom, 30)
                
            
//            Image(systemName: "plus")
//                .padding(16.8)
//                .font(.title)
//                .background(Color("Secondary"))
//                .foregroundColor(.white)
//                .clipShape(Circle())
//                .padding(.trailing, 25)
//                .padding(.bottom, 30)
        }
        .navigationBarHidden(true)
    }
}

struct ModelUser: Identifiable{
    var id = UUID().uuidString
    var nama: String
    var email: String
    var password: String
    var photo: String
}

var UserMS = [
    ModelUser(nama: "Rizal", email: "rijal@gmail.com", password: "rijalasoy", photo: "rijal")
]
