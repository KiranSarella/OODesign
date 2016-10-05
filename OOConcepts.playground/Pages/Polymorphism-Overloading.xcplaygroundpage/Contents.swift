//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// method overloading: save function name with different parameters list

class Math {
    
    
    func add(x: Int, y: Int) -> Int {
        return x + y
    }
    
    func add(x: Int, y: Int, z: Int) -> Int {
        
        return x + y + z
    }
    
    
}

let math = Math()
math.add(x: 5, y: 7)
math.add(x: 5, y: 7, z: 12)
