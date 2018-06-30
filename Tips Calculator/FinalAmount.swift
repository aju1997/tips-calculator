//
//  FinalAmount.swift
//  Tips Calculator
//
//  Created by Andy Ju on 6/26/18.
//  Copyright © 2018 Andy Ju. All rights reserved.
//

import UIKit

class FinalAmount: UIViewController {
    
   
    
    @IBOutlet weak var enteredAmount: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    var userAmountPassed: String = ""
    var userTipAmountPassed: String = ""
    var userTotalAmountPassed: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        enteredAmount?.text = userAmountPassed
        tipAmount?.text =  userTipAmountPassed
        totalAmount?.text = userTotalAmountPassed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        performSegue(withIdentifier: "MoveToInitial", sender: self)
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
