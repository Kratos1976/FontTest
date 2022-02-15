//
//  LoginCardBottonView.swift
//  SplashView
//
//  Created by skynet on 11/2/22.
//

import SwiftUI
import HertzUI

struct ExDivider: View {
    var color: Color = .monochrome300
    var width: CGFloat = 1
    var height: CGFloat = 30

    init(color: Color = .monochrome300, width: CGFloat = 1, height: CGFloat = 30) {
        self.color = color
        self.width = width
        self.height = height
    }

    var body: some View {
        Rectangle()
            .fill(color)
            .frame(width: width, height: height)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

struct LoginCardBottonView: View {
    var body: some View {
        VStack {
            HStack {
                Link("Forgot Password",
                      destination: URL(string: "https://www.example.com/TOS.html")!)
                    .font(.textCTASM())

                ExDivider()
//                Divider()
//                    .font(.heading6Bold())
//                    .foregroundColor(.monochrome300)
//                    .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))

                Link("Forgot member ID",
                      destination: URL(string: "https://www.example.com/TOS.html")!)
                    .font(.textCTASM())

            }
            .padding(8)

            ExDivider(width: UIScreen.main.bounds.width - 48, height: 1)
//            Divider()
                .padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))

            HStack {
                Text("Not a member?")
                    .font(.body3Semibold())
                Link("Create an account",
                      destination: URL(string: "https://www.example.com/TOS.html")!)
                    .font(.textCTASM())

            }
            .padding(.bottom, 22.5)

            Spacer()

            Link("Continue as guest",
                  destination: URL(string: "https://www.example.com/TOS.html")!)
                .font(.textCTASM())
                .padding(.bottom, 50)
        }
    }
}

struct LoginCardBottonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginCardBottonView()
    }
}
