//
//  SplashViewApp.swift
//  SplashView
//
//  Created by skynet on 8/2/22.
//

import SwiftUI
import HertzUI

@main
struct SplashViewApp: App {
    init() {
        HertzUI.registerFonts()
    }

    var body: some Scene {
        WindowGroup {
            SplashScreenView()

            //TODO: show login
        }
    }
}
