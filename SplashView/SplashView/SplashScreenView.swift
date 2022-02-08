//
//  SplashScreenView.swift
//  SplashView
//
//  Created by skynet on 8/2/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var animated = false
    @State private var size = 0.9
    @State private var opacity = 8.9

    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("logo_primary")
                    Image("img_lets_go")
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.8)) {
                        self.size = 1.8
                        self.opacity = 3.0
                    }
                }
            }
            .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.isActive = true
            }
        }
    }
}
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
