//
//  SwiftUIView.swift
//  SplashView
//
//  Created by skynet on 11/2/22.
//

import SwiftUI
import HertzUI



struct LoginCardView: View {
    // MARK: - PROPERTY
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isPasswordShow: Bool = false

    //TODO: move this to HertzUI
    var showHidePasswordButton: some View {
        HStack {
            Button(action: {
                withAnimation {
                    $isPasswordShow.wrappedValue.toggle()
                }

            }, label: {
                    Image(systemName: $isPasswordShow.wrappedValue ? "eye.slash" : "eye").foregroundColor(.monochrome500)
                })

            Text($isPasswordShow.wrappedValue ? "Hide" : "Show")
                .font(.body4Regular())
                .frame(width: 30, height: 20, alignment: .center)
                .foregroundColor(.monochrome700)
        }
    }

    // MARK: - BODY
    var body: some View {
        VStack {

            // MARK: - HEADER

            VStack(alignment: .leading) {
                Text("Log into Gold Plus Rewards.")
                    .font(.heading6Bold())
                    .padding(.init(top: 24, leading: 24, bottom: 12, trailing: 24))
                    .padding(.leading, -90)
            }

            // MARK: - FORM INPUT

            VStack {
                TextInputView($username, placeholder: "Member ID or username", prompt: "")
                    .padding(.bottom, -23)



                TextInputView($password, placeholder: "Password", prompt: "")
                    .rightView({ showHidePasswordButton })
                    .isSecureTextEntry(!isPasswordShow)

                // MARK: - FORM SUBMIT

                ButtonView.primary("Log in") {
                    print("Primary Button Pressed")
                }.font(.button())
                    .padding(.top, -15)

                // MARK: - FOOTER

                LoginCardBottonView()
            }
        }
            .padding(24)
            .frame(width: UIScreen.main.bounds.width - 48, height: 490)
            .background(Color.white)
            .cornerRadius(4)
            .shadow(radius: 5)
    }
}

struct LoginCardView_Previews: PreviewProvider {
    static var previews: some View {
        LoginCardView()
    }
}
