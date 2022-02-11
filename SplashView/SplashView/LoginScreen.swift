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
        LogoImage()
        VStack(alignment: .center)  {
            Text("Log into Gold Plus Rewards.")

            TextField("Member ID or username", text: $username)
                .padding(EdgeInsets(top: 20, leading: 24, bottom: 12, trailing: 24))

            SecureField("Password", text: $password)
                .padding(EdgeInsets(top: 20, leading: 24, bottom: 12, trailing: 24))
            
           
                    
                    Button(action: {print("Button Tapped")}) {
                        LogingButtonContent()
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
            .font(.headline)
            .foregroundColor(.black)
            .padding()
            .frame(width: 300, height: 40)
            .background(Color.yellow)
            .cornerRadius(5.0)
    }
}
