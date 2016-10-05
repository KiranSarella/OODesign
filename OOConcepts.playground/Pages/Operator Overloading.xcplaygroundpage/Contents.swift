//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func * (left: String, right: Int) -> String {
    
    if right <= 0 {
        
        return ""
    }
    
    var result = left
    for _ in 1..<right {
        result += left
    }
    
    return result
}


"Kiran" * 3 // operator overloading..
5 * 5


// ex 2 in side class


class Name {
    
    var myName: String
    
    init(myName: String) {
        self.myName = myName
    }
    
    static func + (left: Name, right: String) -> String {
        
        return "\(left.myName)" + " " + "\(right)"
    }
    
}


let base = Name(myName: "kiran")

base + "sarella"



