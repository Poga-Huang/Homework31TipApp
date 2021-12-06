//
//  ViewController.swift
//  Homework31TipApp
//
//  Created by 黃柏嘉 on 2021/12/6.
//

import UIKit

class ViewController: UIViewController {
    
    //textField
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!
    //Label
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var shareLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //計算小費
    @IBAction func calculateTotal(_ sender: UITextField) {
        if let moneyText = moneyTextField.text,let tipText = tipTextField.text,let peopleText = peopleTextField.text{
            let money = Double(moneyText) ?? 0
            let tip = Double(tipText) ?? 0
            let people = Double(peopleText) ?? 1
            let total = Int(round(money + money * (tip/100)))
            let share = Int(ceil(Double(total)/people))
            totalLabel.text = "總額：\(total)元"
            shareLabel.text = "每人分攤：\(share)元"
        }
    }
    //碰到螢幕就結束編輯
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    

}

