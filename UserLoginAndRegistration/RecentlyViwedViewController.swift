//
//  RecentlyViwedViewController.swift
//  UserLoginAndRegistration
//
//  Created by Nikhil Tanappagol on 8/11/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class RecentlyViwedViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate{
    @IBOutlet var tableView: UITableView!
    var searchListLabel = String()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
        return cell
    }

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
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
