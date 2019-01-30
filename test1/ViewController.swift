//
//  ViewController.swift
//  test1
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 Buu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Value1 : UILabel!
    var targetValue1 : Int = 0
    
    @IBOutlet weak var Value2 : UILabel!
    var targetValue2 : Int = 0
    
    @IBOutlet weak var Symbol : UILabel!
    var targetSymbol : Int = 0
    
    @IBOutlet weak var ans : UILabel!
    
    
    
    @IBAction func random(){
        targetValue1 = Int.random(in: 1...100)
        targetValue2 = Int.random(in: 1...100)
        targetSymbol = Int.random(in: 1...4)
        
        if targetSymbol == 1 {
            Symbol.text = String("+")
            var Ans : Double = Double(targetValue1)+Double(targetValue2)
            ans.text = String(Ans)
        }else if targetSymbol == 2 {
            Symbol.text = String("-")
           var Ans : Double = Double(targetValue1)-Double(targetValue2)
            ans.text = String(Ans)
        }else if targetSymbol == 3 {
            Symbol.text = String("x")
            var Ans : Double = Double(targetValue1)*Double(targetValue2)
            ans.text = String(Ans)
        }else {
            Symbol.text = String("/")
            var Ans : Double = Double(targetValue1)/Double(targetValue2)
            ans.text = String(Ans)
        }
        
        Value1.text = String(targetValue1)
        Value2.text = String(targetValue2)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

