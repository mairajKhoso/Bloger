//
//  profileViewController.swift
//  Bloger
//
//  Created by Apple Macbook on 10/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit

class profileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    


}
