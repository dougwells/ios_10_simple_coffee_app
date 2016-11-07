//
//  ViewController.swift
//  CoffeeApp
//
//  Created by Doug Wells on 11/6/16.
//  Copyright © 2016 Doug Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numCups: UITextField!
    
    @IBOutlet weak var totCost: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numCups.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calcPressed(_ sender: Any) {
        if numCups.text != "" {
            let totCups = Double(numCups.text!)
            let totCostNum = totCups! * 1.95
            let totCostString = String(format: "$%.2f", totCostNum)
            totCost.text = totCostString
        }
    }

}

