//
//  ViewController.swift
//  Assignment #3
//
//  Created by Ivan on 07/02/2019.
//  Copyright © 2019 Ivan Umanets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        countOfSymbolsInName(myName: "Ivan Umanets") //task 1
        
    }
    
    
    
    
    func countOfSymbolsInName(myName: String) {
        let myName = myName
        var countOfSymbols = 0
        for _ in myName {
            countOfSymbols = countOfSymbols + 1
        }
        print ("\(countOfSymbols) symbols in your name including space between given and family names")
    }
    
    }




