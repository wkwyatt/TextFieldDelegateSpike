//
//  ViewController.swift
//  TextFieldDelegateSpike
//
//  Created by Will Wyatt on 8/19/15.
//  Copyright (c) 2015 Will Wyatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var zipcodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var switchTextField: UITextField!
    @IBOutlet weak var switchTextFieldControl: UISwitch!
    
    // Delegates
    let zipcodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    let switchDelegate = LockableTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set delegates
        self.zipcodeTextField.delegate = zipcodeDelegate
        self.cashTextField.delegate = cashDelegate
        self.switchTextField.delegate = switchDelegate
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return self.switchTextFieldControl.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    @IBAction func toggleTheTextEditor(sender: AnyObject) {
        
        if !(sender as! UISwitch).on {
            self.switchTextField.resignFirstResponder()
        }
    }
}

