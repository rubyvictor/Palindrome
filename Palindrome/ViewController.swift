//
//  ViewController.swift
//  Palindrome
//
//  Created by Victor Lee on 18/7/17.
//  Copyright © 2017 VictorLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sentence = "madam anna kayak notapalindrom anna Civic racecar"
        
        
        // Implement a function that will tell us for each palindrome, how many times it occurs.  For example:
        // ["civic": 1, "madam": 1, "kayak": 1, "anna": 2, "racecar": 1]
        
        allPalindromesCount(sentence: sentence)
    }

    func allPalindromesCount(sentence: String) {
        print(sentence)
        let words = sentence.components(separatedBy: " ")
        words.forEach { (word) in
            
            if isPalindrome(word: word) {
                print("Found palindrome:", word)
            }
        }

        }
    
    
    fileprivate func isPalindrome(word: String) -> Bool {
//        var characters = [String]()
//        characters.append(word)
        let characters: Array = [word]
        var currentIndex = 0
        
        while currentIndex < characters.count / 2 {
            if characters[currentIndex] != characters[characters.count - 1 - currentIndex] {
                return false
            }
            currentIndex += 1
        }
        return true
    }
    

}

