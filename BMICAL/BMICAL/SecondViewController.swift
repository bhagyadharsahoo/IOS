//
//  SecondViewController.swift
//  BMICAL
//
//  Created by Sidhartha Das on 10/05/21.
//

import UIKit

class SecondViewController: UIViewController {
    var bmivalue:String?
    var advice :String?
    @IBOutlet weak var backgroundimage: UIImageView!
    var color:UIColor?

    @IBOutlet weak var bmiLeble: UILabel!
    @IBOutlet weak var suggetionLebel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLeble.text=bmivalue
        suggetionLebel.text=advice
        backgroundimage.backgroundColor=color
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalpressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
