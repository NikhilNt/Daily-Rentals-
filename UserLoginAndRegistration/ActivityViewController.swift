//
//  ActivityViewController.swift
//  UserLoginAndRegistration
//
//  Created by Pranav Shashikant Deshpande on 8/10/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {
    
    @IBOutlet weak var viewContainer: UIView!
    var activityTableView: UIView!
    var activityNormalView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    activityTableView = ActivityTableViewController().view
        activityNormalView = ActivityNormalViewController().view
        viewContainer.addSubview(activityNormalView)
        viewContainer.addSubview(activityTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func segmentAction(_ sender: UISegmentedControl)
    {
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubview(toFront: activityNormalView)
            break
        case 1:
            viewContainer.bringSubview(toFront: activityTableView)
        default:
            break
        }
    }
    
    
    
    
    


}
