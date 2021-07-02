//
//  CalculateBrain.swift
//  BMICAL
//
//  Created by Sidhartha Das on 10/05/21.
//

import UIKit
struct CaculateBrain {
    var bmi:Bmi?
    
    mutating func calculateBmi(hight:Float,waight:Float){
       let  bmivalue = waight/(hight*hight)
        if bmivalue<18.5{
            bmi = Bmi(value: bmivalue, advice: "Eat more plz", colour: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
        }
        else if bmivalue<24.9{
            bmi = Bmi(value: bmivalue, advice: "u are fit", colour: .green)
            
        }
        else{
            bmi = Bmi(value: bmivalue, advice: "Eat less plz", colour: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    
    func getBmiValue()->String{
        let bmiVal = String(format: "%.1f",bmi?.value ?? "0.0 " )
        return bmiVal
        
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    func getcolour()->UIColor{
        return bmi?.colour ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
