//
//  LoginFooterView.swift
//  SplashView
//
//  Created by skynet on 11/2/22.
//

import SwiftUI

struct LoginFooterView: View {
    var body: some View {
        VStack {
            HStack {
                Link("Forgot Password",
                      destination: URL(string: "https://www.example.com/TOS.html")!)
                Divider()
                Link("Forgot member ID",
                      destination: URL(string: "https://www.example.com/TOS.html")!)

            }
            Divider()
            HStack {
                Text("Not a member?")
                Link("Create an account",
                      destination: URL(string: "https://www.example.com/TOS.html")!)

            }
            .padding(.bottom, 22.5)
            Spacer()
            Link("Continue as guest",
                  destination: URL(string: "https://www.example.com/TOS.html")!)
        }
    }
}

struct LoginFooterView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFooterView()
    }
}
