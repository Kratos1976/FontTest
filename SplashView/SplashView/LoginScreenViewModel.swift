//
//  LoginScreenViewModel.swift
//  SplashView
//
//  Created by skynet on 17/2/22.
//

import Foundation
import SwiftUI
import Combine

class LoginScreenViewModel: ObservableObject, Identifiable {
    @Published var username: String = ""
    @Published var password: String = ""

    init(username: String = "Test", password: String = "12345") {
        self.username = username
        self.password = password
    }

    func login() { //PUBLISHER  ->  {
        //TODO: call login service
        print("UserName: \(self.username), Password: \(self.password)")
    }
}
