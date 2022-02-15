//
//  LoginSplashViewApp.swift
//  SplashView
//
//  Created by skynet on 8/2/22.
//

import SwiftUI
import HertzUI

@main
struct LoginSplashViewApp: App {
    init() {
        HertzUI.registerFonts()
    }

    var body: some Scene {
        WindowGroup {
            LoginSplashScreenView()

            //TODO: show login
        }
    }
}
