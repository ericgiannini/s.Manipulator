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



