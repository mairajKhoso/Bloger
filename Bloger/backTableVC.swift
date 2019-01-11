//
//  backTableVC.swift
//  Bloger
//
//  Created by Apple Macbook on 08/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import Foundation

class backTableVC: UITableViewController {

    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["Home","Profile","Add blog","Fourth","Fifth"]
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = tableArray[indexPath.row]
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == 0)
        {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
            
            self.present(nextViewController, animated:true, completion:nil)
           // self.navigationController?.pushViewController(next, animated: true)
            
        }
        
        if(indexPath.row == 1)
        {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "profileViewController") as! profileViewController
            
            self.present(nextViewController, animated:true, completion:nil)
            // self.navigationController?.pushViewController(next, animated: true)
            
        }
        if(indexPath.row == 2)
        {
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "addBlogViewController") as! addBlogViewController
            self.present(nextViewController, animated:true, completion:nil)
            //self.navigationController?.pushViewController(nextViewController, animated: true)
            
        }
    }
    
}
