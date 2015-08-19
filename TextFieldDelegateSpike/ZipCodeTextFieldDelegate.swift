//  1. Only allow numbers to be input in the textfield
//  2. Only allow 5 digits to be input




//  ZipCodeTextFieldDelegate.swift
//  TextFieldDelegateSpike
//
//  Created by Will Wyatt on 8/19/15.
//  Copyright (c) 2015 Will Wyatt. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        // TODO: Only allow for numeric input
        
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        // TODO: Stop user from typing more than 5 characters
        
        return true
    }
}
