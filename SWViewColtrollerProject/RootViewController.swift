//
//  RootViewController.swift
//  SWViewColtrollerProject
//
//  Created by apple on 2/12/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var items = ["Home", "Select","Location","About Us","Social"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        tableView.separatorStyle = .none
        tableView.rowHeight = 90
        
       
    }
    

   

}


extension RootViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FrontTableViewCell
       
        
        cell.sideBarItemLabel.text = items[indexPath.row]
        cell.sideBarItemImageView.image = UIImage(named: items[indexPath.row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.performSegue(withIdentifier: items[indexPath.row], sender: self)
    }
    
    
}
