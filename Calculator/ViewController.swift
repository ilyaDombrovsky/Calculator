import UIKit

class ViewController: UIViewController {
    var numberOfScrean: Double = 0
    var firstNumber: Double = 0
    var mathSince: Bool = false
    var  calculationResult: Int = 0
    var lol = 0.0

    @IBOutlet weak var resultt: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSince == true {
            resultt.text = String(sender.tag)
            mathSince = false
        }
        else {
        resultt.text! += String(sender.tag)
        }
        numberOfScrean = Double(resultt.text!)!
    }
    
    
    @IBAction func crushingInNumber(_ sender: UIButton) {
    
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if resultt.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNumber = Double(resultt.text!)!
           
            if sender.tag == 11 {
                resultt.text = "/"
            }
            else if sender.tag == 12 {
                resultt.text = "*"
            }
            else if sender.tag == 13 {
                resultt.text = "-"
            }
            else if sender.tag == 14 {
                resultt.text = "+"
            }
           else if sender.tag == 16 {
     //         result.text = String(format: "%.1f", firstNumber)
           }
    
            calculationResult = sender.tag
            mathSince = true
        }
        else if sender.tag == 15 {
            if calculationResult == 11 {
                resultt.text = String(firstNumber / numberOfScrean)
            }
            else if calculationResult == 12 {
                resultt.text = String(firstNumber * numberOfScrean)
            }
            else if calculationResult == 13 {
                resultt.text = String(firstNumber - numberOfScrean)
            }
            else if calculationResult == 14 {
                resultt.text = String(firstNumber + numberOfScrean)
            }
        }
        else if sender.tag == 10 {
            resultt.text = String("")
            firstNumber = 0
            numberOfScrean = 0
            calculationResult = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
