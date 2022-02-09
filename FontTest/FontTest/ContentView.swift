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
            .font(Font.custom("Proxima Nova Bold", size: 20))
            .padding()
        Text("Hello, world!3")
            .font(Font.custom("Proxima Nova It", size: 20))
            .padding()
        Text("Hello, world!4")
            .font(Font.custom("Proxima Nova Semibold", size: 20))
            .padding()
        Text("Hello, world!5")
            .font(Font.custom("Proxima Nova", size: 20))
            .padding()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
