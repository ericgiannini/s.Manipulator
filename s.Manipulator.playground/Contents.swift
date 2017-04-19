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

/*:
 
 Is a string a palindrome?
 
 */


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

/*: 
 
 Do two strings contain the same characters?
 
 */

func identicalStrings(initial: String, final: String) -> Bool {
    let initialArray = Array(initial.characters).sorted()
    let finalArray = Array(final.characters).sorted()
    return initialArray == finalArray
    
}


identicalStrings(initial: "cannabis", final: "weed")

identicalStrings(initial: " al la ", final: "l a a l")


