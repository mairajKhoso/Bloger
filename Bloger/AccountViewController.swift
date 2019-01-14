//
//  AccountViewController.swift
//  Bloger
//
//  Created by Apple Macbook on 14/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class AccountViewController: UIViewController {

    @IBOutlet weak var SignInSelector: UISegmentedControl!
    @IBOutlet weak var SignInLbl: UILabel!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var signInBtn: UIButton!
    
    var isSignIn:Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInSelectorChanged(_ sender: UISegmentedControl) {
        //Flip the boolean
        isSignIn = !isSignIn
        //check the bool and set the button and label
        if isSignIn{
            SignInLbl.text = "SignIn"
            signInBtn.setTitle("SignIn", for: .normal)
        }
        else
        {
            SignInLbl.text = "SignUp"
            signInBtn.setTitle("SignUp", for: .normal)
        }
    }
    
    
    @IBAction func signInBtnClicked(_ sender: UIButton) {
        //Do some validation on email and password
        if let email = emailTxtField.text, let pass = passwordTxtField.text
        {
            //check if its signin or register
            if isSignIn{
            //signin the user with firebase
                Auth.auth().signIn(withEmail: email, password: pass, completion: { (user, error) in
                    //check that user is not nil
                    if let u = user{
                        //user is found go to home screen
                    }
                    else
                    {
                        //error check
                    }
                })
            }
            else
            {
                //SignUp user with firebase
                Auth.auth().createUser(withEmail: email, password: pass, completion:  { (user, error) in
                    //check that user is not nil
                    if let u = user{
                        //user is found go to home screen
                    }
                    else{
                        //Error check error msg
                    }
                })
                
            }
        }
    }
    
}
