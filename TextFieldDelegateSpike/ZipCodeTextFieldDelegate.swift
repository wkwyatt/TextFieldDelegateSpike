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
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // TODO: Stop user from typing more than 5 characters
        
        var zip = textField.text as NSString
        
        zip = zip.stringByReplacingCharactersInRange(range, withString: string)
        
        return zip.length <= 5
    }

}
