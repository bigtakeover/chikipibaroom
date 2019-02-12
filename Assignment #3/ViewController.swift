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
   
        countOfSymbolsInName(myName: "Cherniy Gospodin") //task 1
        countOfSymbolsInNameVerseTwo(myName: "Charles Manson")
        checkMiddleName(middleName: "Pavlovich")     // task 2
        nameWithoutSpace(name: "LohPedalniy")
        chekingPassword(password: "asdaQGUYVGI12432%^$^%ssad")

    
    }
    
    func chekingPassword(password: String) {
        var result = 0
        if checkingPasswordForLowercase(password: password) {
            result += 1
        }
        if checkingPasswordForUppercase(password: password) {
            result += 1
        }
        if checkingPasswordForNumbers(password: password) {
            result += 1
        }
        if checkingPasswordForSpecialSymbols(password: password) {
            result += 1
        }
        if result == 4 {
            result += 1
        }
        print ("\(result)")
    }

    func checkingPasswordForNumbers(password: String) -> Bool {
    let numbersInPassword = Int(password.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
    if numbersInPassword == nil {
        return false
    }
    else {
        return true
    }
    
}
    
    func checkingSymbolForUppercase(character: Character) -> Bool {
        let stringOfCharacter = String(character)
        let uppercasedCharacter = stringOfCharacter.uppercased()
        if stringOfCharacter == uppercasedCharacter {
            return true
        } else {
            return false
        }
    }
    
    func checkingPasswordForLowercase(password: String) -> Bool {
        for char in password {
            if !checkingSymbolForUppercase(character: char) {
                return true
            }
        }
        return false
    }
    
    func checkingPasswordForUppercase(password: String) -> Bool {
        for char in password {
            if checkingSymbolForUppercase(character: char) {
                return true
            }
        }
        return false
    }
    
    func checkingPasswordForSpecialSymbols(password: String) -> Bool {
        let symbolsChecking = CharacterSet.symbols
        let punctuationSymbolsChecking = CharacterSet.punctuationCharacters
        for char in password.unicodeScalars {
            if symbolsChecking.contains(char) || punctuationSymbolsChecking.contains(char) {
                return true
            }
        }
        return false
    }

    func commaInNumbers (someString: String) {
        
        var someString = someString
       someString.insert(",", at: someString.index(someString.startIndex, offsetBy: 3))
        print (someString)
    
        someString.insert(contentsOf:",", at: someString.index(before: someString.endIndex))
        print (someString)
    }
    
    func task3Verse2(someString: String) {
        var names = [String]()
        var charCount = 0
        var nameWithSpace = someString
        for char in someString {
            if isUppercased(character: char) && char != someString.first! {
                someString
                nameWithSpace.insert(contentsOf:" ", at: someString.lastIndex(of: char)!)
                print(nameWithSpace)
            }
            charCount += 1
            
        }
        //        firstName = nameWithSpace.components(separatedBy: " ").first!
        //        secondName = nameWithSpace.components(separatedBy: " ").last!
        //        print (firstName)
        //        print(secondName)
    }
    
    func isUppercased(character: Character) -> Bool {
        let stringOfCharacter = String(character)
        let uppercasedCharacter = stringOfCharacter.uppercased()
        if stringOfCharacter == uppercasedCharacter {
            return true
        } else {
            return false
        }
    }
    
    func task3(someString: String) {
        var firstName = ""
        var secondName = ""
        var nameWithSpace = someString
        for char in someString {
            
            if isUppercased(character: char) && char != someString.first! {
                
                nameWithSpace.insert(contentsOf:" ", at: someString.lastIndex(of: char)!)
                print(nameWithSpace)
            }
        }
        firstName = nameWithSpace.components(separatedBy: " ").first!
        secondName = nameWithSpace.components(separatedBy: " ").last!
        print (firstName)
        print(secondName)
        
    }
    
    func nameWithoutSpace (name: String){
    var name = "IvanUmanets"
        var firstCharacter = "I"
        firstCharacter = firstCharacter.uppercased()
        
    
    }
    
    func checkMiddleName(middleName: String) {
        if middleName.hasSuffix("ich") {
            print ("Your middle name finishes on -ich")
        }
        if middleName.hasSuffix("na") {
            print ("Your middle name finishes on -na")
        }
    }
    
    func countOfSymbolsInNameVerseTwo(myName: String) {
    print ("\(myName.count) symbols in your name including space between given name and family name")
    }
    
    func countOfSymbolsInName(myName: String) {
        var countOfSymbols = 0
        for _ in myName {
            countOfSymbols = countOfSymbols + 1
        }
        print ("\(countOfSymbols) symbols in your name including space between given name and family name")
    }
    
    }





