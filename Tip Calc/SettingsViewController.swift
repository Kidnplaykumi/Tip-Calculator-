//
//  SettingsViewController.swift
//  Tip Calc
//
//  Created by Elijah Kumi on 12/29/17.
//  Copyright © 2017 Elijah Kumi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var TipPercentage: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func ChangeSetting(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(TipPercentage.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
        
        
    }
    
    func updateUI()  {
        let defaults = UserDefaults.standard
        let defaultPercent = defaults.integer (forKey: "defaultTip")
        TipPercentage.selectedSegmentIndex = defaultPercent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateUI()
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
