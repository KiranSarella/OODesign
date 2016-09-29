//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


/*
 
 https://www.youtube.com/watch?v=CHTdxUPAxT8
 https://www.youtube.com/watch?v=Gt0M_OHKhQE
 
 */


/*
// Bad Design

protocol Rotatable {
    
    func rotateFast()
    func rotateSlow()
    func printFeatures()
    
}

class TableFan: Rotatable {
    
    
    func rotateFast() {
        print("rotate fast")
    }
    
    func rotateSlow() {
        print("rotate slow")
    }
    
    func printFeatures() {
        print("print all fan features")
    }
}

// HAS MORE THEN ONE REASONS TO CHANGE

*/

// Good Design

protocol Printer {
    
    func printFeatures()
}


protocol Rotatable {
    
    func rotateFast()
    func rotateSlow()
}

class FanPrinter: Printer {
    
    func printFeatures() {
        print("Printing all fan features")
    }
}

class TableFan: Rotatable {
    
    func rotateSlow() {
        print("rotate slow")
    }
    
    func rotateFast() {
        print("rotate fast")
    }
}


// If any rotate functionalities changed, then only TableFan have to change.. if only print option changed, when only FanPrinter have to be modified.


let tableFan = TableFan()
tableFan.rotateFast()

let fanPrinter = FanPrinter()
fanPrinter.printFeatures()



















