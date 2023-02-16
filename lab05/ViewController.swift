//
//  ViewController.swift
//  lab05
//
//  Created by stanley tsonev on 2023-02-16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepUpLabel: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var count = 0
    var step = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = "\(count)"
        stepUpLabel.setTitle("StepUp \(step)", for: .normal)
    }
    
    @IBAction func getBackToMain(_ segue: UIStoryboardSegue){
        
    }
    
    
    @IBAction func add(_ sender: UIButton) {
        count+=step
        countLabel.text = "\(count)"
    }
    
    
    @IBAction func clear(_ sender: UIButton) {
        count = 0
        step = 1
        stepUpLabel.setTitle("StepUp \(step)", for: .normal)
        countLabel.text = "\(count)"
        
    }
    
    
    @IBAction func stepUp(_ sender: UIButton) {
        step+=1
        sender.setTitle("StepUp \(step)", for: .normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "blueTravel" {
            let c = segue.destination as! BlueViewController
            if let s = nameLabel.text {
                c.name = s
            }
        }
        if segue.identifier == "greenTravel"{
            let c = segue.destination as! GreenViewController
            if count > 0 {
                c.count = count
            }
        }
    }}

