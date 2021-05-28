//
//  ViewController.swift
//  tableview3
//
//  Created by Sidhartha Das on 07/05/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableview3: UITableView!
    
    var flowerbrain = FlowerBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview3.delegate=self
        tableview3.dataSource=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowerbrain.num.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview3.dequeueReusableCell(withIdentifier: "magia", for: indexPath) as! FlowerViewCell
       
        cell.flowerView1.image = flowerbrain.num[indexPath.row].flowerimage
        cell.firstLebel.text=flowerbrain.num[indexPath.row].firstl
        cell.secondLebel.text=flowerbrain.num[indexPath.row].secondL
        return cell
        
    }
   


}


