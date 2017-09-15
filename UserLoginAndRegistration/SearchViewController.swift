//
//  SearchViewController.swift
//  UserLoginAndRegistration
//
//  Created by Nikhil Tanappagol on 8/11/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubCell", for: indexPath) as! SearchSubClassCell
            cell.searchListImage?.image = UIImage(named: "pexels-photo-490466")
            cell.searchListLabel?.text = " RECENTLY VIEWED "
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubCell", for: indexPath) as! SearchSubClassCell
            cell.searchListImage?.image = UIImage(named: "deal")
            cell.searchListLabel?.text = " DEALS AROUND YOU "
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubCell", for: indexPath) as! SearchSubClassCell
            cell.searchListImage?.image = UIImage(named: "sunset-over-eiffel-tower")
            cell.searchListLabel?.text = " TOP DESTINATIONS "
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SubCell", for: indexPath) as! SearchSubClassCell
            cell.searchListImage?.image = UIImage(named: "FCARS")
            cell.searchListLabel?.text = " FEATURE CARS "
            return cell
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            switch indexPath.section
            {
            case 0:
                 performSegue(withIdentifier: "pass", sender: self)
            default:
               break
            }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
