//
//  CalculatorViewController.swift
//  Calculator_V1
//
//  Created by Kittinun Chobtham on 16/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var AddBtn: UIButton!
    @IBOutlet weak var AcBtn: UIButton!
    @IBOutlet weak var MinussBtn: UIButton!
    @IBOutlet weak var multiplyBtn: UIButton!
    @IBOutlet weak var divideBtn: UIButton!
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var operation = 0
    var isPerformingOperation = false
    var change = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func numberPressed(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
        
        if isPerformingOperation == true {
            isPerformingOperation = false
            resultLabel.text = String(tag - 1)
            numberOnScreen = Double(resultLabel.text!)!
            
        } else {
            let tag = (sender as! UIButton).tag
            resultLabel.text = resultLabel.text! + String(tag - 1)
            numberOnScreen = Double(resultLabel.text!)!
            
        }
    }
    
    @IBAction func operatorPressed(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        
        if tag == 16 {
            
            resultLabel.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
            return
        }
        
        if tag == 11 {
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            operation = tag
            
            
        } else if tag == 12 {
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            operation = tag
            
            
        } else if tag == 13 {
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            operation = tag
            
            
        } else if tag == 14 {
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            operation = tag
            
        } else if tag == 17 {
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            operation = tag
            
        } else if tag == 18 {
            isPerformingOperation = true
            previousNumber = Double(resultLabel.text!)!
            operation = tag
            //        } else if tag == 19 {
            //            isPerformingOperation = true
            //            previousNumber = Double(resultLabel.text!)!
            //            resultLabel.text = "."
            //            operation = tag
            
        } else if tag == 15 {
            
            if tag == 11 {
                
                resultLabel.text = String(previousNumber / numberOnScreen)
                
            } else if operation == 12 {
                
                resultLabel.text = String(previousNumber * numberOnScreen)
                
            } else if operation == 13 {
                resultLabel.text = String(previousNumber - numberOnScreen)
                
            } else if operation == 14 {
                resultLabel.text = String(previousNumber + numberOnScreen)
                
            } else if operation == 17 {
                resultLabel.text = String(numberOnScreen * (-1))
                
            } else if operation == 18 {
                resultLabel.text = String(numberOnScreen / 100)
                
            }
            
        }
        
    }
    
    @IBAction func dotButton(_ sender: Any) {
        if (resultLabel.text?.count == 0){
            resultLabel.text = "0."
        }
        else{
            if resultLabel.text!.range(of: ".")  == nil{
                resultLabel.text = resultLabel.text! + "."
            }
        }
    }
    
    
    
    @IBAction func AcButton(_ sender: Any) {
        change = !change
        UpdateUI()
    }
    
    @IBAction func AddButton(_ sender: Any) {
        change = !change
        addUI()
    }
    
    @IBAction func minusButton(_ sender: Any) {
        change = !change
        miinusUI()
    }
    
    @IBAction func divideButton(_ sender: Any) {
        change = !change
        miinusUI()
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        change = !change
        dividUI()
    }
    
    private func UpdateUI() {
        
        if change {
            AcBtn.backgroundColor = .lightGray
            AcBtn.setTitle("AC", for: .normal)
            
        } else {
            AcBtn.backgroundColor = .white
            AcBtn.setTitle("C", for: .normal)
            
        }
    }
    
    private func addUI() {
        if change {
            AddBtn.backgroundColor = .orange
            AddBtn.setTitle("+",
                            for: .normal)
        } else {
            AddBtn.backgroundColor = .white
            AddBtn.setTitle("+",
                            for: .normal)
        }
    }
    
    private func miinusUI() {
        if change {
            
            MinussBtn.backgroundColor = .orange
            MinussBtn.setTitle("-", for: .normal)
        } else {
            MinussBtn.backgroundColor = .white
            MinussBtn.setTitle("-", for: .normal)
        }
    }
    
    private func multiply() {
        if change {
            
            multiplyBtn.backgroundColor = .orange
            multiplyBtn.setTitle("*", for: .normal)
        } else {
            multiplyBtn.backgroundColor = .white
            multiplyBtn.setTitle("*", for: .normal)
        }
    }
    
    private func dividUI() {
        if change {
            
            divideBtn.backgroundColor = .orange
            divideBtn.setTitle("/", for: .normal)
            
        } else {
            divideBtn.backgroundColor = .white
            divideBtn.setTitle("/", for: .normal)
            
        }
    }
        
    }
    


