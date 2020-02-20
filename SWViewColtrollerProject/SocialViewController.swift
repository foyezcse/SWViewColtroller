//
//  SocialViewController.swift
//  SWViewColtrollerProject
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController {

    
    
    
    @IBOutlet weak var motoLabel: UILabel!
     @IBOutlet weak var menuNavigationButton: UIBarButtonItem!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var linkedInButton: UIButton!
    
    
    
    
           override func viewDidLoad() {
               super.viewDidLoad()
              
            self.facebookButton.layer.borderWidth = 4
            self.facebookButton.layer.cornerRadius = 7
            self.twitterButton.layer.borderWidth = 4
            self.twitterButton.layer.cornerRadius = 7
            self.linkedInButton.layer.borderWidth = 4
            self.linkedInButton.layer.cornerRadius = 7
            self.motoLabel.textColor = UIColor.blue
               menuNavigationButton.target = self.revealViewController()
               menuNavigationButton.action = #selector(SWRevealViewController.revealToggle(_:))
               self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
              
           }

    
    @IBAction func facebookButton(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "PlatformViewController") as! PlatformViewController
//        vc.btnNo = 1
//        self.navigationController?.pushViewController(vc, animated: true)
        guard let url = URL(string: "https://m.facebook.com/login/device-based/regular/login/?login_attempt=1&lwv=110") else { return }
        UIApplication.shared.open(url)
    }
    @IBAction func twitterButton(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "PlatformViewController") as! PlatformViewController
//        vc.btnNo = 2
//        self.navigationController?.pushViewController(vc, animated: true)
        guard let url = URL(string: "https://mobile.twitter.com/login?lang=bn") else { return }
               UIApplication.shared.open(url)
    }
    @IBAction func linkedInButton(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "PlatformViewController") as! PlatformViewController
//        vc.btnNo = 3
//        self.navigationController?.pushViewController(vc, animated: true)
        guard let url = URL(string: "https://m.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin") else { return }
               UIApplication.shared.open(url)
    }
    
    
    
    
    
    
    
    
    
    
    
}
