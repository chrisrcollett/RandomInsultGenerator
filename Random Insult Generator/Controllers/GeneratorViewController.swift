//
//  GeneratorViewController.swift
//  Random Insult Generator
//
//  Created by Christopher Collett on 4/6/22.
//

import AVFoundation
import UIKit

class GeneratorViewController: UIViewController {

    @IBOutlet weak var leftPickerView: UIPickerView!
    @IBOutlet weak var rightPickerView: UIPickerView!
    
    let leftInsults = Insult(data: prefixInsults)
    let rightInsults = Insult(data: suffixInsults)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftPickerView.delegate = leftInsults
        leftPickerView.dataSource = leftInsults
        leftPickerView.setValue(UIColor.darkGray, forKey: "textColor")
        
        rightPickerView.delegate = rightInsults
        rightPickerView.dataSource = rightInsults
        rightPickerView.setValue(UIColor.darkGray, forKey: "textColor")
        
        generateRandomInsult()
        
    }
    
    @IBAction func randomizeButtonPressed(_ sender: UIButton) {
        
        generateRandomInsult()

    }
    
    @IBAction func insultButtonPressed(_ sender: UIButton) {
        
        let leftSelectedRow = leftPickerView.selectedRow(inComponent: 0)
        let rightSelectedRow = rightPickerView.selectedRow(inComponent: 0)
        let firstInsult = leftInsults.insultArray[leftSelectedRow]
        let secondInsult = rightInsults.insultArray[rightSelectedRow]
        
        let insult = firstInsult + " " + secondInsult
        
        print(insult)
        
        let speaker = AVSpeechUtterance(string: insult)
        speaker.voice = AVSpeechSynthesisVoice(language: "en-US")

        let synth = AVSpeechSynthesizer()
        synth.speak(speaker)
        
    }
    
    func generateRandomInsult() {
        let leftInsultCount = leftInsults.insultArray.count
        let rightInsultCount = rightInsults.insultArray.count
        
        leftPickerView.selectRow(Int.random(in: 1...leftInsultCount), inComponent: 0, animated: true)
        rightPickerView.selectRow(Int.random(in: 1...rightInsultCount), inComponent: 0, animated: true)
    }
    
    
}
