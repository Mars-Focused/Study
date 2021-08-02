//
//  Tester+Strings.swift
//  String
//
//  Created by Luat on 8/2/21.
//

import Foundation

extension Tester {
    
    /// Using print command
    func printWord(word: String) {
        print(word)
    }
    
    /// input "hello" should print "Hello"
    func printUpperCase(word: String) {
        print(word.uppercased())
    }
    
    /// Using for loop, print each char in word
    func printLetters(word: String) {
        for char in word {
            print(char)
        }
    }
    
    /// Using for-in-enumerated(), print odd-index chars in word
    func printOddCharsEnumerated(word: String) {
        for (n, c) in word.enumerated() {
            if n%2 == 0 {
                print(c)
            }
        }
    }
    
    /// Using for-in-stride and string.index, print odd-index chars in word
    func printOddCharsStrideIndex(word: String) {
        for char in stride(from: 0, to: 3, by: 2) {
            let ans = word[word.index(word.startIndex, offsetBy: char)]
            print(ans)
        }
//        print("f")
//        print("v")
            
        }
    
    /**
     Pig Latin:
     1) Move the first letter to the end and add "ay"
     pig -> igpay
     latin -> atinay
     2) IF word starts with a vowel, add "yay" to the word
     one -> oneyay
     */
    func printPigLatin(word: String) {
        let vowels = "aeiou"
        var newWord = word
        let startIndex = newWord.startIndex
        let firstCharacter = newWord[startIndex]
        
        if vowels.contains(firstCharacter) {
            newWord.append("yay")
            print(newWord)
        } else {
            newWord.append(firstCharacter)
            newWord.append("ay")
            newWord.remove(at: startIndex)
            print(newWord)
        }
    }
    
    /// Using loop and string.index, returns true if input is a palindrome
    func isPalindrome(word: String) -> Bool {
        let len = word.count/2
        for i in 0..<len {
            let start = word.index(word.startIndex, offsetBy: i)
            let end = word.index(word.endIndex, offsetBy: (i * -1)-1)
            
            if word[start] != word[end] {
                return false
            }
        }
        return true
    }
        
//        if String(word.reversed()) == word {
//            return true
//        } else {
//            return false
//        }
//    }

}
