//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var splitBrain : SplitBrain = SplitBrain()
    
    @IBOutlet var splitNumber: UILabel!
    @IBOutlet var button20: UIButton!
    @IBOutlet var button10: UIButton!
    @IBOutlet var button0: UIButton!
    @IBOutlet var textInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }

    @IBAction func tipChange(_ sender: UIButton) {
        textInput.endEditing(true)
        
        button0.isSelected = false
        button10.isSelected = false
        button20.isSelected = false
        
        sender.isSelected = true
        print("Tombol yang ditekan: \(sender.currentTitle ?? "Tanpa Nama")")
        
        let string = sender.titleLabel?.text ?? "0"
        let numberString = string.dropLast()
        let number = Double(numberString) ?? 0
        
        splitBrain.tip = number
        
        print(splitBrain.tip)
        
    }
    
    @IBAction func calculateBtn(_ sender: UIButton){
        splitBrain.total = Double(textInput.text ?? "0") ?? 0
        
        splitBrain.calculate()
        
        print(splitBrain.getResult())
        
        self.performSegue(withIdentifier: "gotoresult", sender: self)
       
    }
    
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        sender.stepValue = 1
        sender.minimumValue = 2
                
        let value = Int(sender.value)
        
        
        splitBrain.numberOfPeople = value
        
        splitNumber.text = splitBrain.getNumberOfPeople()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoresult" {
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.descriptionResultseg = splitBrain.totalFinal?.description ?? "Belum ada hasil"
            destinationVc.reult = splitBrain.totalFinal?.resultperPerson ?? "0"
        }
    }
}

