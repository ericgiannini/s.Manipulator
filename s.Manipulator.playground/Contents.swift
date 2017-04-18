//: Playground - noun: a place where people can play

import UIKit

/*:
 
 # String Manipulation
 
 */

/*:
 
 Does a string have unique letters?
 
 */

func alphabeticallySingularString(input: String) -> Bool {
    return Set(input.characters).count == input.characters.count
}

alphabeticallySingularString(input: "cannabis")


func palindrome(input: String) -> Bool {
    
    var reversedArray = Array<Character>()
    for character in input.characters {
        reversedArray.insert(character, at:0)
    }
    
    return Array(input.characters) == reversedArray
}

palindrome(input: "cannabis")
palindrome(input: "pilot")
palindrome(input: "rotator")
