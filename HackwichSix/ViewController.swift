//
//  ViewController.swift
//  HackwichSix
//
//  Created by Marion Ano on 3/2/21.
//  Copyright © 2021 Marion Ano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriendsArray = ["Sara", "Nicole", "Grant"]
    var friendsCity = ["Honolulu", "Kailua", "Waiʻanae"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = myFriendsArray[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = friendsCity[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

