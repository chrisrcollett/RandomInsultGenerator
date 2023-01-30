//
//  Insult.swift
//  Random Insult Generator
//
//  Created by Christopher Collett on 4/6/22.
//

import Foundation
import UIKit

class Insult: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let insultArray: [String]
    
    init(data: [String]) {
        insultArray = data
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return insultArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return insultArray[row]
    }
    
}
