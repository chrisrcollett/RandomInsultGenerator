//
//  SuffixInsults.swift
//  Random Insult Generator
//
//  Created by Christopher Collett on 4/5/22.
//

import Foundation
import UIKit

class SuffixInsult: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let suffixInsults = ["chunk","bagger","flaps","licker","munch","rammer","sucker","waffle","eater","face","biter","bucket","monkey","dumpster","jacket","junkie","chopper","lips","fucker","blower","donkey","monster","wad","jockey","dangler","skank","pooper","farm","lover","shitter","hole","pincher","beater","sniffer","wipe","twister","slammer","folds","clot","glob","jammer","fondler","tickler","fungus","plug","packer","wrangler","slime","diddler","sandwich","gobbler","wanker","muncher","stain","boner","nugget","booger","rag","basket","burger","biscuit","bandit","gargler"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return suffixInsults.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return suffixInsults[row]
    }
    
}
