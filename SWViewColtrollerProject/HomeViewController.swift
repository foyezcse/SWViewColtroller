//
//  HomeViewController.swift
//  SWViewColtrollerProject
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK:- Utilities
    @IBOutlet weak var menuNavigationButton: UIBarButtonItem!
    @IBOutlet weak var tabBAR1: UITabBar!
    
    @IBOutlet weak var container: UIView!
    var vc = UIViewController()
    
    
    //MARK:- Init
    override func viewDidLoad() {
        super.viewDidLoad()
        //container = UIViewController()
        tabBAR1.delegate = self
        menuNavigationButton.target = self.revealViewController()
        menuNavigationButton.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
}

//MARK:- Tab Bar
extension HomeViewController: UITabBarDelegate{
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 1:
            vc.remove()
            let v = storyboard?.instantiateViewController(identifier: "HomeTabBarViewController") as! HomeTabBarViewController
            //embed(v, inView: container)
            add(v, frame: container.frame)
            print("1")
        case 2:
            vc.remove()
            let v = storyboard?.instantiateViewController(identifier: "ProfileTabBarViewController") as! ProfileTabBarViewController
            //embed(v, inView: container)
            add(v, frame: container.frame)
            print("2")
        case 3:
            vc.remove()
            let v = storyboard?.instantiateViewController(identifier: "CloudTabBarViewController") as! CloudTabBarViewController
            //embed(v, inView: container)
            add(v, frame: container.frame)

            print("3")
        case 4:
            vc.remove()
            let v = storyboard?.instantiateViewController(identifier: "NotificationTabBarViewController") as! NotificationTabBarViewController
            //embed(v, inView: container)
            add(v, frame: container.frame)
            print("4")
        default:
            print("Error")
        }
    }
}


extension UIViewController {
func add(_ child: UIViewController, frame: CGRect? = nil) {
    addChild(child)
    if let frame = frame {
        child.view.frame = frame
    }
    view.addSubview(child.view)
    child.didMove(toParent: self)
}
func remove() {
    willMove(toParent: nil)
    view.removeFromSuperview()
    removeFromParent()
    }
    
}

//MARK:- Embeding function
extension UIViewController {
    func embed(_ viewController:UIViewController, inView view:UIView){
        viewController.willMove(toParent: self)
        viewController.view.frame = view.bounds
        view.addSubview(viewController.view)
        self.addChild(viewController)
        viewController.didMove(toParent: self)
    }
}
