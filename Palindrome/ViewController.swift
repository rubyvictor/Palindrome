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

    func allPalindromesCount(sentence: String) -> [String: Int] {
        print(sentence)
        
        var counts = [String: Int]()
        
        let words = sentence.components(separatedBy: " ")
        words.forEach { (word) in
            
            if isPalindrome(word: word) {
                counts[word] = 1 // parse key into counts and set value to 1
                print("Found palindrome:", word)
            }
        }
        print("Counts:", counts)
        return counts
        }
    
    
    fileprivate func isPalindrome(word: String) -> Bool {
        
        let characters = Array(word.lowercased())
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

