//
//  LoginScreenViewController.swift
//  SplashDemo UI Kit to Swift UI
//
//  Created by skynet on 15/2/22.
//

import UIKit
import SwiftUI

class LoginScreenViewController: UIViewController {

    let contentView = UIHostingController(rootView: LoginScreen())

    override func viewDidLoad() {
        super.viewDidLoad()

        addChild(contentView)
        view.addSubview(contentView.view)

        setupConstraints()
    }

    func setupConstraints() {
        contentView.view.translatesAutoresizingMaskIntoConstraints = false

        contentView.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentView.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}
