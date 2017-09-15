//
//  ProfileAccountViewController.swift
//  UserLoginAndRegistration
//
//  Created by Pranav Shashikant Deshpande on 8/10/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ProfileAccountViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logOutBtn(_ sender: UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let lotOutBtn = storyboard.instantiateViewController(withIdentifier: "loginView")
        self.navigationController?.pushViewController(lotOutBtn, animated: true)
    }
    
    @IBAction func closeMyAccount(_ sender: UIButton)
    {
        
    }
    
    @IBAction func goBackBtn(_ sender: UIBarButtonItem)
    {
        dismiss(animated: true, completion: nil)
        
    }

   

}
