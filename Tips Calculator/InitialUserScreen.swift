//
//  InitialUserScreen.swift
//  Tips Calculator
//
//  Created by Andy Ju on 6/26/18.
//  Copyright © 2018 Andy Ju. All rights reserved.
//

import UIKit

class InitialUserScreen: UIViewController {

    @IBOutlet weak var userAmount: UITextField!
    @IBOutlet weak var userTipPercentage: UITextField!
    
    var stringTipAmount = String()
    var stringTotalAmount = String()
    var stringUserAmount = String()
    
    var doubleAmount: Double = 0.0
    var doubleTipPercentage: Double = 0.0
    var doubleTotalAmount: Double = 0.0
    var doubleTipAmount: Double = 0.0
    
    
    
    func stringToDouble() {
        doubleAmount = Double(userAmount.text!)!
        doubleTipPercentage = Double(userTipPercentage.text!)!
        
        doubleTipPercentage *= 0.01
        
        doubleTipAmount = doubleAmount * doubleTipPercentage
        
        doubleTotalAmount = doubleAmount + doubleTipAmount
    }
    
    func doubleToString() {
        stringTipAmount = String(format: "%.2f", doubleTipAmount)
        stringTotalAmount = String(format: "%.2f", doubleTotalAmount)
        
        stringUserAmount = String(format: "%.2f", doubleAmount)
    }
    
    
    //Passing text field data to FinalAmount VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        stringToDouble()
        doubleToString()
        if let vcInitial = segue.destination as? FinalAmount {
            vcInitial.userTipAmountPassed = stringTipAmount
            vcInitial.userTotalAmountPassed = stringTotalAmount
            vcInitial.userAmountPassed = stringUserAmount
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        if !((userAmount.text?.isEmpty)!) && !((userTipPercentage.text?.isEmpty)!) {
            performSegue(withIdentifier: "MoveToFinal", sender: self)
        }
    }

}

