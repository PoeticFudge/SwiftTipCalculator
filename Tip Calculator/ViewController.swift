//
//  ViewController.swift
//  Tip Calculator
//
//  Created by PoeticFudge on 3/4/17.
//  Copyright © 2017 PoeticFudge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBOutlet weak var txtMealCost: UITextField!

    @IBOutlet weak var lblTip: UILabel!
    @IBOutlet weak var lblTipTotal: UILabel!
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func changeTipPercentage(_ sender: AnyObject) {
        updateTipPercentage()
    }
    
    func updateTipPercentage() {
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(txtMealCost.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        lblTip.text = String(format: "$%.2f", tip)
        lblTipTotal.text = String(format: "$%.2f", total)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let tipPercentage = defaults.integer(forKey: "tipPercentage")
        tipControl.selectedSegmentIndex = tipPercentage
        updateTipPercentage()
    }
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let tipPercentage = defaults.integer(forKey: "tipPercentage")
        tipControl.selectedSegmentIndex = tipPercentage
        
        // Do any additional setup after loading the view, typically from a nib.
    }
 */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   }



