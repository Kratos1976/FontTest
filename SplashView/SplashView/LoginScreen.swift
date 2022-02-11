//
//  LoginScreen.swift
//  SplashView
//
//  Created by skynet on 10/2/22.
//

import SwiftUI

struct LoginScreen: View {
    @State var username: String = ""
    @State var password: String = ""
    @State private var isLoginValid: Bool = false
    @State private var shouldShowLoginAlert: Bool = false

    var body: some View {
        VStack(alignment: .center)  {
            Text("Log into Gold Plus Rewards.")

            TextField("Member ID or username", text: $username)
                .padding(EdgeInsets(top: 20, leading: 24, bottom: 12, trailing: 24))

            Text("Your username: \(username)")

            SecureField("Password", text: $password)
                .padding(EdgeInsets(top: 20, leading: 24, bottom: 12, trailing: 24))

        }
    }

}
struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
