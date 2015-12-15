//
//  ViewController.swift
//  FoodTracker
//
//  Created by Hamza Sheikh on 15/12/2015.
//  Copyright © 2015 Hamza Sheikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks.
        
        nameTextField.delegate = self // self here refers to the ViewController class
        
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        // Hide the keyboard
        
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions

    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

