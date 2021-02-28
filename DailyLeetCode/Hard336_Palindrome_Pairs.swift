//
//  Hard336_Palindrome_Pairs.swift
//  DailyLeetCode
//
//  Created by Mengyuan Tian on 2021/2/27.
//

import Foundation

class Hard336_Palindrome_Pairs {
    func palindromePairs(_ words: [String]) -> [[Int]] {
        if words.count <= 1 {
            return []
        }
        
        var result: Set<[Int]> = []
        var dict: [String: Int] = [:]
        
        //store words Array into dictionary[word : index]
        for index in 0..<words.count {
            dict[words[index]] = index
        }
        
        // Handle empty String
        if dict[""] != nil {
            let emptyIndex = dict[""]
            for i in 0..<words.count {
                if i != emptyIndex && isPalindrom(words[i]) {
                    result.insert([emptyIndex!, i])
                    result.insert([i, emptyIndex!])
                }
            }
        }
        
        // Handle reverse String
        for index in 0..<words.count {
            if dict[String(words[index].reversed())] != nil,
               let reversedIndex = dict[String(words[index].reversed())],
               reversedIndex != index {
                result.insert([index, reversedIndex])
                result.insert([reversedIndex, index])
            }
            
        }
        
        // Handle palindrome String
        for index in 0..<words.count {
            let currentWord = words[index]
            if currentWord != "" {
                for i in 1..<currentWord.count {
                    if isPalindrom(String(currentWord.prefix(i))),
                       let helperIndex = dict[String(String(currentWord.suffix(currentWord.count - i)).reversed())] {
                        result.insert([helperIndex, index])
                    }
                    
                    if isPalindrom(String(currentWord.suffix(i))),
                       let helperIndex = dict[String(String(currentWord.prefix(currentWord.count - i)).reversed())] {
                        result.insert([index, helperIndex])
                    }
                }
            }
        }
        
        return Array(result)
    }
    
    func isPalindrom(_ word: String) -> Bool {
        let firstHalf = String(word.prefix(word.count / 2))
        let secondHalf = String(word.suffix(word.count / 2))
        
        if firstHalf == String(secondHalf.reversed()) {
            return true
        } else {
            return false
        }
    }
}
