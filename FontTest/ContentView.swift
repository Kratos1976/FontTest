//
//  ContentView.swift
//  FontTest
//
//  Created by skynet on 7/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(Font.custom("Roboto-Bold", size: 20))
            .padding()
        Text("Hello, world!2")
            .font(Font.custom("ProximaNova-Bold Italic", size: 20))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
