//
//  Insults.swift
//  Random Insult Generator
//
//  Created by Christopher Collett on 4/6/22.
//

import Foundation
import UIKit

class Insults: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let prefixInsults = ["cock","tampon","shit","penis","juice","ball","jizz","cum","fanny","dick","bitch","douche","fart","nut","‘gina","piss","whore","slut","mother","sissy","wench","crap","nipple","anus","retard","jerk","trash","tit","snot","scum","diaper","granny","pecker","cooch","twat","mouth","rectum","wiener","cunt","fetus","clit","ho","schlong","sack","meat","pussy","testicle","dildo","prick","scrotum","muff","panty","pube","sperm","poop","butt","pork","feces","beef","queef","clown"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return prefixInsults.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return prefixInsults[row]
    }
    
}
