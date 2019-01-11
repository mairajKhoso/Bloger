//
//  addBlogViewController.swift
//  Bloger
//
//  Created by Apple Macbook on 10/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit

class addBlogViewController: UIViewController,UITextViewDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var blogTitle: UITextView!
    @IBOutlet weak var blogDescription: UITextView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var SaveBtnClick: button!
    
    var imgPicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIText view delegate is added for textview place holder and when user tapp on it place holder just removed
        blogTitle.delegate = self
        blogTitle.text = "Enter title here"
        blogTitle.textColor = UIColor.lightGray
        blogDescription.delegate = self
        blogDescription.text = "Write description about your blog"
        blogDescription.textColor = UIColor.lightGray
    }
    //when the user begins to edit the text view and if its text color is light gray clear the placeholder text and set the text color to white
    func textViewDidBeginEditing(_ textView: UITextView) {
        if blogTitle.textColor == UIColor.lightGray {
            blogTitle.text = nil
            blogTitle.textColor = UIColor.white
        }
        else if blogDescription.textColor == UIColor.lightGray {
            blogDescription.text = nil
            blogDescription.textColor = UIColor.white
        }
    }
    //when the user finishes editing the text view and it's resigned as the first responder, if the text view is empty, reset its placeholder
    func textViewDidEndEditing(_ textView: UITextView) {
        if blogTitle.text.isEmpty  {
            blogTitle.text = "Enter title here"
            blogTitle.textColor = UIColor.lightGray
        }
        else if blogDescription.text.isEmpty {
            blogDescription.text = "Write description about your blog"
            blogDescription.textColor = UIColor.lightGray
        }
    }
    
    
    @IBAction func galleryBtnClick(_ sender: button) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button captured")
            imgPicker.delegate = self
            imgPicker.sourceType = .savedPhotosAlbum
            imgPicker.allowsEditing = false
            self.present(imgPicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let chosenImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imgView.contentMode = .scaleAspectFill
        imgView.image = chosenImage
        dismiss(animated:true, completion: nil)

//        let _ : UIImage = image
//        self.imgView.contentMode = .scaleAspectFit
//        imgView.image = image

    }
//    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!) {
//        let _ : UIImage = image
//        self.imgView.contentMode = .scaleAspectFit
//        imgView.image = image
//
//
//}
}
