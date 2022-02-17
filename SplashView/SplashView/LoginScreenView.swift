//
//  LoginScreen.swift
//  SplashView
//
//  Created by skynet on 10/2/22.
//

import SwiftUI
import HertzUI

struct LogoImage: View {
    var body: some View {
        Image("logo_primary")
    }
}

struct LoginScreen: View {
//    @State var username: String = ""
//    @State var password: String = ""
    @State private var isLoginValid: Bool = false
    @State private var shouldShowLoginAlert: Bool = false

    @ObservedObject var viewModel = LoginScreenViewModel()

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("Login Logo Car")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)

                VStack(alignment: .leading) {
                    LogoImage()
                        .padding(.bottom, 30)
                    LoginCardView(username: $viewModel.username, password: $viewModel.password, action: {
                        viewModel.login()
                    })
                }
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
