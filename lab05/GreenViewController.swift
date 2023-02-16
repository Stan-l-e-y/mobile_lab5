//
//  GreenViewController.swift
//  lab05
//
//  Created by stanley tsonev on 2023-02-16.
//

import UIKit

class GreenViewController: UIViewController {
    
    var count = -1

    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        countLabel.text = "\(count)"
    }
    
    @IBAction func getBack(_ segue: UIStoryboardSegue){
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "greenToBlue"{
            let c = segue.destination as! BlueViewController
            if let s = textLabel.text {
                c.s2Text = s
            }
        }
    }
    

}
