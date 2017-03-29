//
//  ViewController.swift
//  MVC-test
//
//  Created by stephen myers on 11/15/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//
//                   ***** NO DATA MANIPULATION ****

//        Controller works with the IB outlets and IB actions to pass data back and forth 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var renameField: UITextField!
    let person = Person(first: "Steve", last: "Bobs")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fullNameLbl.text = person.fullName
    }

    @IBAction func renamePressed(_ sender: Any) {
        if let txt = renameField.text {
            person.firstName = txt
            fullNameLbl.text = person.fullName
        }
    }
    
    
}

