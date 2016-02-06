//
//  ViewController.swift
//  Is it Prime
//
//  Created by Richard Smith on 11/01/2016.
//  Copyright © 2016 Kinch Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UserBox: UITextField!
    @IBOutlet var ResultLabel: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        ResultLabel.text = "working"
        self.view.endEditing(true)
        if let ns = (UserBox).text {
            if let n = Int(ns) {
                var isPrime = true
                var divisor = 2
                if (n == 0) { isPrime = false}
                var i = 0
                for ( i = 2; i <= n-1 && isPrime; i++)
                {
                    if ( n%i == 0) {isPrime = false; divisor = i}
                }
                if (isPrime == true) {
                    ResultLabel.text = "Prime"
                }
                else {
                    ResultLabel.text = "NOT Prime, divides by \(divisor)"
                }
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ResultLabel.text = "unknown"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

