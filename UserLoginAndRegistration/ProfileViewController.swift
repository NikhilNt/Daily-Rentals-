//
//  ProfileViewController.swift
//  UserLoginAndRegistration
//
//  Created by Pranav Shashikant Deshpande on 8/10/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var firstSection = ["Account", "Profile", "Favourites", "Trip History"]
    var secondSection = ["How this app works", "Contact support", "Legal"]
    var thirdSection = ["logout"]
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath)
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = firstSection[indexPath.row]
        case 1:
            cell.textLabel?.text = secondSection[indexPath.row]
        case 2:
            cell.textLabel?.text = thirdSection[indexPath.row]
        default:
            cell.textLabel?.text = "nil"
        }
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return firstSection.count
        case 1:
            return secondSection.count
        case 2:
            return thirdSection.count
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "FIRST"
        case 1:
            return "SECOND"
        case 2:
            return "THIRD"
        default:
            return "nil"
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            switch indexPath.row{
            case 0:
                performSegue(withIdentifier: "profileAccount", sender: self)
            default:
                "nil"
            }
        case 2:
            performSegue(withIdentifier: "loginView", sender: self)
        default:
            "nil"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    

}
