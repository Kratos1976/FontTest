//
//  LoginScreen.swift
//  SplashView
//
//  Created by skynet on 10/2/22.
//

import SwiftUI
import HertzUI

struct LoginScreen: View {
    @State var username: String = ""
    @State var password: String = ""
    @State private var isLoginValid: Bool = false
    @State private var shouldShowLoginAlert: Bool = false

    var body: some View {
        ZStack {
            Image("Login Logo Car")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)

            VStack(alignment: .leading) {
                LogoImage()
                    .padding(.bottom, 30)
                LoginCardView()
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

struct LogoImage: View {
    var body: some View {
        Image("logo_primary")
    }
}
struct LogingButtonContent: View {
    var body: some View {
        Text("Log In")
            .font(.button())
//            .font(.button())
            .foregroundColor(.black)
            .padding()
            .frame(width: 279, height: 41)
            .background(Color.yellow)
            .cornerRadius(5.0)
    }
}
