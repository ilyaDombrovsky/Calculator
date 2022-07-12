//
//  ViewController.swift
//  Calculator
//
//  Created by Ilya Dombrovsky on 12.07.22.
//

import UIKit

class ViewController: UIViewController {
    var stillTyping = false
    var firstNum: Double = 0
    var mathSign = false
    
    @IBAction func digits(_ sender: UIButton) {
        
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
            
        }
        
        let number = String(sender.tag)
        
        if number == "0" && result.text == "0" {
            stillTyping = false
        } else {
            if stillTyping {
                if result.text!.count < 9 {
                    result.text! += number
                }
            } else {
                result.text = number
                stillTyping = true
            }
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" {
            if sender.tag == 11 {
                
            } else if sender.tag == 12 {
                
            } else if sender.tag == 13 {
                
            } else if sender.tag == 14 {
                result.text = "+"
            }
        }
    }
    @IBOutlet weak var result: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

