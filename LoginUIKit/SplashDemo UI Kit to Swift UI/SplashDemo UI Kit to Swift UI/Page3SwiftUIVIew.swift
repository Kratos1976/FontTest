//
//  Page3SwiftUIVIew.swift
//  SplashDemo UI Kit to Swift UI
//
//  Created by skynet on 15/2/22.
//

import SwiftUI
import HertzUI

struct Page3SwiftUIVIew: View {
    @State private var isActive = false
    @State private var opacityLogo: Double = 0
    @State private var opacityText: Double = 0
    @State private var positionX = 100

    var body: some View {
        VStack {
            VStack {
                Image("logo_primary")
                    .opacity(opacityLogo)
                    .offset(x: CGFloat(positionX))
                    .animation(Animation.easeIn(duration: 1.5).delay(0.5).speed(2))
                    .onAppear() {
                    positionX += -95
                    opacityLogo = 1.0
                }

                Image("img_lets_go")
                    .opacity(opacityText)
                    .onAppear() {
                    withAnimation(.easeIn(duration: 1.0).delay(0.8)) {
                        opacityText = 1.0
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) {
                        isActive = true
                    }
                }
            }
        }
    }
}
struct Page3SwiftUIVIew_Previews: PreviewProvider {
    static var previews: some View {
        Page3SwiftUIVIew()
    }
}
