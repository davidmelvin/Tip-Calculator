//
//  ViewController.swift
//  Tipper
//
//  Created by David Melvin on 6/14/16.
//  Copyright © 2016 David Melvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //allow these labels to be changed within the view, by creating an outlet for it
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true) //dismiss keyboard
    }

    @IBAction func calculateTip(sender: AnyObject) {
        let tipPercentages = [0.15, 0.20, 0.25]
        
        ///let because I won't change this value later. Isn't it automatically changing though?
        // What is the exclamation point for?
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex];
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

