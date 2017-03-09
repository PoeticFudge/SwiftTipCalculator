//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by PoeticFudge on 3/5/17.
//  Copyright © 2017 PoeticFudge. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tipController: UISegmentedControl!
    
    @IBAction func controllerChange(_ sender: AnyObject) {

        let defaults = UserDefaults.standard
        defaults.set(tipController.selectedSegmentIndex, forKey: "tipPercentage")
        defaults.synchronize()    }
    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let defaults = UserDefaults.standard
        let tipPercentage = defaults.integer(forKey: "tipPercentage")
        tipController.selectedSegmentIndex = tipPercentage
        
        // Do any additional setup after loading the view.
    }
 */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let tipPercentage = defaults.integer(forKey: "tipPercentage")
        tipController.selectedSegmentIndex = tipPercentage
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
