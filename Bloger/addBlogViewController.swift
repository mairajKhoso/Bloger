//
//  addBlogViewController.swift
//  Bloger
//
//  Created by Apple Macbook on 10/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseStorage
class addBlogViewController: UIViewController,UITextViewDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    var ref:DatabaseReference!
    @IBOutlet weak var blogTitle: UITextView!
    @IBOutlet weak var blogDescription: UITextView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var SaveBtnClick: button!
    var imgPicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // UIText view delegate is added for textview place holder and when user tapp on it place holder just removed
        ref = Database.database().reference()
        
        blogTitle.delegate = self
        blogTitle.text = "Please enter title here..."
        blogTitle.textColor = UIColor.lightGray
        blogDescription.delegate = self
        blogDescription.text = "Write description about your blog"
        blogDescription.textColor = UIColor.lightGray
    }
    //when the user begins to edit the text view and if its text color is light gray clear the placeholder text and set the text color to white

    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.tag == 100 {
            if blogTitle.text == "Please enter title here..." {
                blogTitle.text = ""
                blogTitle.textColor = UIColor.white
            }
        }
        
        //if blogDescription.textColor == UIColor.lightGray {
        else if textView.tag == 101{
            if blogDescription.text == "Write description about your blog"
            {
                blogDescription.text = ""
                blogDescription.textColor = UIColor.white
            }
        }
    }
    //when the user finishes editing the text view and it's resigned as the first responder, if the text view is empty, reset its placeholder
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.tag == 100 {
            if blogTitle.text.isEmpty  {
                blogTitle.text = "Please enter title here..."
                blogTitle.textColor = UIColor.lightGray
            }
        }
         else if textView.tag == 101
        {
                if blogDescription.text.isEmpty {
                    blogDescription.text = "Write description about your blog"
                    blogDescription.textColor = UIColor.lightGray
                
                }
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

    }
    
        func saveBtnClick(_ sender: button) {
        
        ref.child("Blogs").childByAutoId().setValue(["Image": imgView, "BLog Title":blogTitle.text, "Blog Description":blogDescription.text])
    }
    

}
