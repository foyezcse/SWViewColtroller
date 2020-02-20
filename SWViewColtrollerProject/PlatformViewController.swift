//
//  PlatformViewController.swift
//  SWViewColtrollerProject
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import WebKit

class PlatformViewController: UIViewController, WKNavigationDelegate {

    var web:WKWebView!
    var wb:String!
    var btnNo:Int!
    
    @IBOutlet weak var webSiteView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        web = WKWebView()
                      web.navigationDelegate = self
        self.webSiteView = web
        loadWeb()
    }
    

   func loadWeb(){
    
    switch btnNo {
    case 1:
        wb = "https://m.facebook.com/login/device-based/regular/login/?login_attempt=1&lwv=110"
    case 2:
        wb = "https://mobile.twitter.com/login?lang=bn"
    case 3:
        wb = "https://m.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin"
    default:
        print("Error")
    }
    
    
    
        let url = URL(string: wb)!
        web.load(URLRequest(url: url))
        web.allowsBackForwardNavigationGestures = true
    }

}
