//
//  ViewController.swift
//  MiraclePill_Version2
//
//  Created by stephen myers on 10/31/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//

import UIKit

//UIPickerViewDataSource and Delegate are Protocols

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    //statepicker is the picker view
    @IBOutlet weak var pillTitle: UILabel!
    @IBOutlet weak var pillImageView: UIImageView!
    @IBOutlet weak var costTitle: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var streetAddressTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var StatePicker: UIPickerView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var StatePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var successImageView: UIImageView!
    
    let states = ["Alaska", "Pennsylvania", "New York", "California", "Georgia", "Massachussettes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //This tells the StatePicker to look to this class for its datasource like rows.
        //Delegate lets us know that this class will act on behalf of the state picker
        
        self.StatePicker.dataSource = self
        self.StatePicker.delegate = self
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        StatePicker.isHidden = false
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
    }
    
    
    //functions needed for the picker view -> componenets == column
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //rows in picker view
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
         return states.count
    }
    //title of rows
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        StatePickerBtn.setTitle(states[row], for: UIControlState.normal)
        StatePicker.isHidden = true
        countryLabel.isHidden = false
        countryTextField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeTextField.isHidden = false
    }
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        pillImageView.isHidden = true
        pillTitle.isHidden = true
        costTitle.isHidden = true
        dividerView.isHidden = true
        fullNameLabel.isHidden = true
        fullNameTextField.isHidden = true
        streetAddressLabel.isHidden = true
        streetAddressTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        stateLabel.isHidden = true
        StatePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryTextField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeTextField.isHidden = true
        successImageView.isHidden = false
        
    }

}

