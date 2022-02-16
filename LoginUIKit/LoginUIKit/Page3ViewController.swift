//
//  Page3ViewController.swift
//  SplashDemo UI Kit to Swift UI
//
//  Created by skynet on 15/2/22.
//

import UIKit
import SwiftUI

class Page3ViewController: UIViewController {

    @IBOutlet weak var theContainer : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let childView = UIHostingController(rootView:Page3SwiftUIVIew())
        addChild(childView)
        childView.view.frame = theContainer.bounds
        theContainer.addSubview(childView.view)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
