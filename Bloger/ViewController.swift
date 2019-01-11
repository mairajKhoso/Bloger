//
//  ViewController.swift
//  Bloger
//
//  Created by Apple Macbook on 10/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideMenuBarBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        sideMenuBarBtn.target = self.revealViewController()
        sideMenuBarBtn.action = Selector("revealToggle:")
        // for side gesture
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
    }
    
}

