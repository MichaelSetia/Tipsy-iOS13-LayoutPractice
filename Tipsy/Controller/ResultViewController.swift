//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Michael on 26/05/26.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet var descriptionResult: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    
    var reult : String = ""
    var descriptionResultseg: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = reult
        descriptionResult.text = descriptionResultseg
        
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
