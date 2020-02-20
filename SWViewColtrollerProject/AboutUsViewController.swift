//
//  AboutUsViewController.swift
//  SWViewColtrollerProject
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

     @IBOutlet weak var menuNavigationButton: UIBarButtonItem!
       override func viewDidLoad() {
           super.viewDidLoad()
           menuNavigationButton.target = self.revealViewController()
           menuNavigationButton.action = #selector(SWRevealViewController.revealToggle(_:))
           self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
       }

}
