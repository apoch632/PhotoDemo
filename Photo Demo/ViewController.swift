//
//  ViewController.swift
//  Photo Demo
//
//  Created by Allen King on 08/09/2016.
//  Copyright © 2016 Allen King. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            imageView.image = image
        }
        else{
            print("There was a problem picking an image")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func importImage(_ sender: AnyObject) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        
        //Update to Camera instead of PhotoLibrary to use native Camera
        //Also need to allow Privacy in Info.plist
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        imagePickerController.allowsEditing = false
        
        self.present(imagePickerController, animated: true, completion: nil)
        
        
    }
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

