//
//  TabButton.swift
//  Money_Splitter
//
//  Created by Irfandio Daffa on 18/11/20.
//

import SwiftUI

struct TabButton: View {
    
    @State var title: String
    @Binding var selectedTab: String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selectedTab = title}
        }) {
            if selectedTab == title{
                HStack{
                    Text("\(title)")
                        .font(Font.custom("Poppins-Light", size: 10))
                        .foregroundColor(.white)
                }
                .padding([.top, .bottom], 5)
                .padding([.leading, .trailing], 10)
                .background(Color("Secondary"))
                .cornerRadius(13)
            }else{
                HStack{
                    Text("\(title)")
                        .font(Font.custom("Poppins-Light", size: 10))
                        .foregroundColor(.black)
                }
                .padding([.top, .bottom], 5)
                .padding([.leading, .trailing], 10)
                .background(Color("Gray6"))
                .cornerRadius(13)
            }
        }
    }
}
