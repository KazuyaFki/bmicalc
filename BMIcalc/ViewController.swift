//
//  ViewController.swift
//  BMIcalc
//
//  Created by Kazuya Fukui on 2020/03/23.
//  Copyright © 2020 Kazuya Fukui. All rights reserved.Button(action: ) {
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
      
    @IBOutlet weak var bmiText: UILabel!
      
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var judgmentLabel: UILabel!
    
      override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
               // キーボードを閉じる
               view.endEditing(true)
           }
      
      
      
      override func viewDidLoad() {
          super.viewDidLoad()
      
        self.height.keyboardType = UIKeyboardType.numbersAndPunctuation
        self.weight.keyboardType = UIKeyboardType.numbersAndPunctuation
          
        button.layer.cornerRadius = 10
      }
      
   

      @IBAction func button(_ sender: UIButton) {
        
        let fHeight = Float(height.text!)
        let fWeight = Float(weight.text!)
        let fHeight2 = fHeight! * fHeight!
        let bmi:Int = Int(fWeight! / fHeight2)
        bmiText.text = ("あなたのBMIは\(bmi)です")
       
        if bmi < 18 {
            judgmentLabel.text = "あなたは痩せ過ぎです"
        }else if bmi > 18 || bmi < 25 {
            judgmentLabel.text = "あなたは標準です"
        }else if bmi > 25 || bmi < 30 {
            judgmentLabel.text = "あなたは肥満1度です"
        }else if bmi > 30 || bmi < 35 {
            judgmentLabel.text = "あなたは肥満2度です"
        }else if bmi > 35 || bmi < 40 {
            judgmentLabel.text = "あなたは肥満3度です"
        }else if bmi > 40 {
            judgmentLabel.text = "あなたは肥満4度です"
        }
        
      }
    

}

