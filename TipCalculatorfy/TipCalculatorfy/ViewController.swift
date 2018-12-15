//
//  ViewController.swift
//  TipCalculatorfy
//
//  Created by Fung on 12/14/18.
//  Copyright © 2018 fungyung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let percentage = [0.18,0.2,0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * percentage[tipPercentage.selectedSegmentIndex];
        let total = tip + bill;
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format:"$%.2f",total)
        
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        //dismiss keyboard
        view.endEditing(true)
    }
    
}

