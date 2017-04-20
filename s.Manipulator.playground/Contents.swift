//: Playground - noun: a place where people can play

import UIKit

/*:
 
 # String Manipulation
 
 */

/*:
 
 Return an array of strings from a string
 
 */

func indexicalizedString(string: String) -> Array<String> {
    return string.characters.map { String($0) }
}

indexicalizedString(string: "string")


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


/*:
 
 Return the most frequently occuring character in a string
 
 */

func modeOfCharacterFromString(string: String) -> (String) {
    
    let arrayOfStringCharacters = string.characters.map { String($0) }
    var counts:[String:Int] = [:]
    
    for string in arrayOfStringCharacters {
        counts[string] = (counts[string] ?? 0) + 1
    }
    
    let greatestRecurringString = counts.max(by: { (a, b) -> Bool in
        return a.1 < b.1})

    return greatestRecurringString!.key
}



