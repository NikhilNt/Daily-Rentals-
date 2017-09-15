//
//  ListYourCarThirdView.swift
//  UserLoginAndRegistration
//
//  Created by Nikhil Tanappagol on 8/14/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//


import UIKit
//import BSImagePicker
import Photos

/*class ListYourCarThirdView: UIViewController {
    
    @IBOutlet var extImageOne: UIImageView!
    @IBOutlet var intNameOne: UITextField!
    
    var selectedAssests = [PHAsset]()
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        
    }
    @IBAction func uploadImageBtn(_ sender: Any) {
        
      //  let vc = BSImagePickerViewController()
     //   self.bs_presentImagePickerController( vc , animated: true,
        select: {(asset: PHAsset) -> Void in },deselect: {(asset: PHAsset) -> Void in }, cancel: {(assets: [PHAsset])-> Void in}, finish: { (assets: [PHAsset]) -> Void in
            for i in 0..<assets.count
            {
                self.selectedAssests.append(assets[i])
            }
            self.convertAssetsToImage()
        }, completion: nil)

    }
    func convertAssetsToImage() -> Void {
        if selectedAssests.count != 0 {
            for i in 0..<selectedAssests.count{
                let manager = PHImageManager.default()
                let option = PHImageRequestOptions()
                var thumbnail = UIImage()
                manager.requestImage(for: selectedAssests[i], targetSize: CGSize(width:200 , height : 200), contentMode: .aspectFill, options: option, resultHandler:{(result, info) -> Void in thumbnail = result!
                })
                
                let data = UIImageJPEGRepresentation(thumbnail, 0.7)
                let newImage = UIImage(data: data!)
                self.imageArray.append(newImage! as UIImage)
            }
            
            self.extImageOne.animationImages = self.imageArray
            self.extImageOne.animationDuration = 3.0
            self.extImageOne.startAnimating()
        }
        
    }
}

*/





