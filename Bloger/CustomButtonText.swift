//
//  CustomButtonText.swift
//  Bloger
//
//  Created by Apple Macbook on 10/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import Foundation
class button : UIButton
{
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //let myColor = UIColor.white
        //layer.borderColor = myColor.cgColor
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1/UIScreen.main.nativeScale
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layer.cornerRadius = frame.height/2
    }
    
}

class TxtView: UITextView {
    override func awakeFromNib() {
        super.awakeFromNib()

        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1/UIScreen.main.nativeScale
        //contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        //layer.cornerRadius = frame.height/2
    }
}
class TxtField:UITextField
{
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1/UIScreen.main.nativeScale
    }
}
class Image : UIImageView{
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1/UIScreen.main.nativeScale
        //contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        //layer.cornerRadius = frame.height/2
    }
    
}
