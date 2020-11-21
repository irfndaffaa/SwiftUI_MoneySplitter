//
//  FloatingButtonView.swift
//  Money_Splitter
//
//  Created by Irfandio Daffa on 21/11/20.
//

import SwiftUI

struct FloatingButtonView: View {
    
    @State var showItem1 = false
    @State var showItem2 = false
    
    var body: some View {
        VStack{
            Spacer()
            if showItem1{
                sideFloat(icon: "pencil")
            }
            if showItem2{
                sideFloat(icon: "camera")
            }
            
            Button(action: {
                self.showMenu()

            }) {
                Image(systemName: "plus")
                    .padding(16.8)
                    .font(.title)
                    .background(Color("Secondary"))
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
        }
    }
    
    func showMenu() {
        withAnimation{
            showItem2.toggle()
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
            withAnimation{
                showItem1.toggle()
            }
        }
    }
}

struct sideFloat: View {
    var icon: String

    var body: some View{
        Image(systemName: "\(icon)")
            .padding(16.8)
            .font(.title)
            .background(Color("Secondary"))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding(.bottom, 25)
            .transition(.move(edge: .trailing))
    }
}

