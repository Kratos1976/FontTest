//
//  LoginScreen.swift
//  SplashView
//
//  Created by skynet on 10/2/22.
//

import SwiftUI
import HertzUI

struct LoginScreenView: View {
    @State private var isLoginValid: Bool = false
    @State private var shouldShowLoginAlert: Bool = false

    @ObservedObject var viewModel = LoginScreenViewModel()

    var body: some View {
        ZStack {
            Image("LoginBG")
                .resizable()
                .scaledToFit()
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

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
