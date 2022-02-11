//
//  SwiftUIView.swift
//  SplashView
//
//  Created by skynet on 11/2/22.
//

import SwiftUI

struct CardView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {

        VStack(alignment: .leading) {            
            Text("Log into Gold Plus Rewards.")

            TextField("Member ID or username", text: $username)
                .padding(EdgeInsets(top: 20, leading: 24, bottom: 20, trailing: 24))
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.gray)
                )
            SecureField("Password", text: $password)
                .padding(EdgeInsets(top: 20, leading: 24, bottom: 20, trailing: 24))
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                               .stroke(Color.gray)
                )
                .padding(.top, 12)
            Button(action: { print("Button Tapped") }) {
                LogingButtonContent()
            }
            .padding(.top, 20)
            LoginFooterView()

        }
        .padding(24)
        .frame(width: 327, height: 452)
        .background(Color.white)
        .cornerRadius(4)
        .shadow(radius: 5)

        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
