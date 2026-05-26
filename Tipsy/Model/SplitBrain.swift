//
//  SplitBrain.swift
//  Tipsy
//
//  Created by Michael on 26/05/26.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

struct SplitBrain{
    var tip : Double = 10
    var total : Double = 0.0
    var numberOfPeople : Int = 2
    
    var totalFinal : SplitModel?
    
    func getNumberOfPeople() -> String {
        let numberString = String(numberOfPeople )
        return numberString
    }
    
    func gettip() -> String {
        let tipString = String(format:"%.2f", tip )
        return tipString
    }
    
    func getResult() -> String {
        let totalwTip = total * (1+(tip/100))
        let totalfinals = totalwTip / Double(numberOfPeople)
        
        return String(format: "%.1f", totalfinals)
    }
    
    mutating func calculate() {
        let totalwTip = total * (1+(tip/100))
        let totalfinals = totalwTip / Double(numberOfPeople)
        
        totalFinal = SplitModel(resultperPerson:  String(format: "%.1f", totalfinals), description: "Split between \(numberOfPeople) people, including \(Int(tip))% tip")
        
    }
}
