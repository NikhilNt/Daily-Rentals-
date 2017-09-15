//
//  ListYourCarString.swift
//  UserLoginAndRegistration
//
//  Created by Nikhil Tanappagol on 8/14/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class ListYourCarString: UIViewController {
// Text field Features
    @IBOutlet var addressField: UITextField!
    @IBOutlet var makeField: UITextField!
    @IBOutlet var modelField: UITextField!
    @IBOutlet var yearField: UITextField!
    @IBOutlet var transmissionField: UITextField!
    @IBOutlet var odometerField: UITextField!
    @IBOutlet var styleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet var btnTag: UIButton!
    @IBOutlet var btnGps: UIButton!
    @IBOutlet var btnHY: UIButton!
    @IBOutlet var btnAudio: UIButton!
// Car features fields
    @IBAction func carFeatures(_ sender: UIButton) {
        switch sender.tag {
        case 0:
          btnTag.titleLabel?.textColor = UIColor.red
        case 1 :
          btnGps.titleLabel?.textColor = UIColor.red
        case 2 :
          btnHY.titleLabel?.textColor = UIColor.red
        default:
          btnAudio.titleLabel?.textColor = UIColor.red
        }
    }
    
    @IBAction func uploadTheImage(_ sender: Any) {
        uploadImage()
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func uploadImage () {
        let parameters =  ["make": makeField.text
            , "model": modelField.text
            , "style": styleField.text
            , "year": yearField.text, "transmission": transmissionField.text
            , "odometer": odometerField.text,"location": addressField.text]
        
        guard let url = URL(string :"http://45.79.76.22:9080/EasyRentals/car/listyourcar") else {return}
        var request = URLRequest(url: url)
        // httpMetod is instance property of URLRequest
        request.httpMethod = "POST"
        //httpMetod is instance method of URLRequest
        request.addValue("application/json", forHTTPHeaderField : "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) else {return}
        //This data is sent as the message body of the request, as in done in an HTTP POST request.
       // httpbody is instance property of URLRequest
        request.httpBody = httpBody
        let session = URLSession.shared.dataTask( with:request){ (data,response,error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                    
                    if let myjson = json  as? NSDictionary{
                        let result : String = (myjson [ "Value"] as? String)!
                        if result == "Saved" {
                            
                            print("data is saved")
                            
                        } else {
                            
                            print("data is not saved ")
                        }
                    }
                }
                catch {
                    print(error)
                }
                
                
            }
        }
        session.resume()

    }
    

   
}
