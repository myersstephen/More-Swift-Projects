//
//  RoundedImageView.swift
//  MVC-test
//
//  Created by stephen myers on 11/15/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//
// This class changes what the view will look like, custom view elements are in here

import UIKit

class RoundedImageView: UIImageView {

    //awake from zib
    // be sure to change the image class in the storyboard to this class 
    override func awakeFromNib() {
        self.layer.cornerRadius = 25.0
        self.clipsToBounds = true
    }
}
