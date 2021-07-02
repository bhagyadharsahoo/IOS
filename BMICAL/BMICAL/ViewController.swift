//
//  ViewController.swift
//  BMICAL
//
//  Created by Sidhartha Das on 05/05/21.
//

import UIKit

class ViewController: UIViewController {
    var bmiValue:String?
    
    var calculatebrain = CaculateBrain()

    @IBOutlet weak var waightSlider: UISlider!
    @IBOutlet weak var waightLebel: UILabel!
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var hightLebel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func hightMoved(_ sender: UISlider) {
        let hightValue = String(format: "%.2f",sender.value)
          hightLebel.text = "\(hightValue)M"
        
         
    }
    
    @IBAction func waightMoved(_ sender: UISlider) {
          let waightvalue=String(format: "%.0f", sender.value)
           waightLebel.text="\(waightvalue)kg"
        
    }
    @IBAction func calulatePressed(_ sender: UIButton) {
        let hightvalue = hightSlider.value
        let Waightvalue = waightSlider.value
 
        calculatebrain.calculateBmi(hight: hightvalue, waight: Waightvalue)
        performSegue(withIdentifier: "gotores", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotores"{
            let resvc=segue.destination as! SecondViewController
            resvc.bmivalue=calculatebrain.getBmiValue()
            resvc.advice = calculatebrain.getAdvice()
            resvc.color = calculatebrain.getcolour()
              
        }
    }
}

