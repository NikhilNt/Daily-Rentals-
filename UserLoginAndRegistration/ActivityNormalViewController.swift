//
//  ActivityNormalViewController.swift
//  UserLoginAndRegistration
//
//  Created by Pranav Shashikant Deshpande on 8/10/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ActivityNormalViewController: UIViewController {
    
    @IBAction func findACar(_ sender: UIButton)
    {
        
    }
    
    @IBAction func listACar(_ sender: UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let listACar = storyboard.instantiateViewController(withIdentifier: "car") as! ListYourCarViewController
        self.navigationController?.pushViewController(listACar, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
