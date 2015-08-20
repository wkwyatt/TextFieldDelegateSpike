// 1. Only allow numbers to be input
// 2. Format the input to $0.00
// 3. Input a "," after every three digits before the decimal symbol




//  CashTextFieldDelegate.swift
//  TextFieldDelegateSpike
//
//  Created by Will Wyatt on 8/19/15.
//  Copyright (c) 2015 Will Wyatt. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {

    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var oldText  = textField.text as NSString
        var newText = oldText.stringByReplacingCharactersInRange(range, withString: string)
        var newTextString = String(newText)
        
        let digits = NSCharacterSet.decimalDigitCharacterSet()
        var digitText = ""
        for c in newTextString.unicodeScalars {
            if digits.longCharacterIsMember(c.value) {
                digitText.append(c)
            }
        }
        
        
        // TODO: format string to cash value
        if let pennies = digitText.toInt() {
            newText = "$" + self.dollarStringFromInt(pennies) + "." + self.centsStringFromInt(pennies)
        } else {
                newText = "$0.00"
        }
        
        textField.text = newText
        
        return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text.isEmpty {
            textField.text = "$0.00"
        }
    }
    
    func dollarStringFromInt(value: Int) -> String {
        return String(value/100)
    }
    
    func centsStringFromInt(value: Int) -> String {
        let cents = value % 100
        var centsString = String(cents)
        
        if cents < 10 {
            centsString = "0" + centsString
        }
        
        return centsString
    }
}
