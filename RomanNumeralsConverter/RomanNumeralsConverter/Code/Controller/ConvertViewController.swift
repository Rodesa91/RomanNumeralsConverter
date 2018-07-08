//
//  ConvertViewController.swift
//  RomanNumeralsConverter
//
//  Created by Rodrigo de Santiago on 5/7/18.
//  Copyright © 2018 Rodrigo de Santiago. All rights reserved.
//

import UIKit

class ConvertViewController: UIViewController {

    @IBOutlet weak var convertFromLabel: UILabel!
    @IBOutlet weak var convertToLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    var convertFromRoman: Bool = true
    let converter = Converter()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
    }
    
    @IBAction func switchConverter(_ sender: Any) {
        self.convertFromRoman = !self.convertFromRoman
        self.convertToLabel.text = self.convertFromRoman ? "Arabic" : "Roman"
        self.convertFromLabel.text = self.convertFromRoman ? "Roman" : "Arabic"
    }
    
    
}

extension ConvertViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.returnKeyType == UIReturnKeyType.go) {
            if let inputNumber = inputTextField.text {
                if convertFromRoman {
                    resultLabel.text = self.converter.validRoman(inputNumber.uppercased()) ? self.converter.convertToDecimal(inputNumber).description : "Enter a valid roman number"
                } else {
                    resultLabel.text = self.converter.validDecimal(inputNumber) ?self.converter.convertToRoman(Int(inputNumber)!) : "Enter a valid number"
                }
            }
        }
        return true
    }
}
