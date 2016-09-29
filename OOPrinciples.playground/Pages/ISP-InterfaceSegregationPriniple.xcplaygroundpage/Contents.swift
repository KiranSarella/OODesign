//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// Clients should not be forced to depend upon interfaces that they don't use.

/*
 Interface Segregation Principle - ISP
 https://www.youtube.com/watch?v=bKM-zPRyk_Q&list=PL6ZBtsd6TpYCSvFLlU_sM4AkBCVANSAPe
 
 
 
 */


/*
// Bad Design
protocol Rotatable {
    
    func rotateSlow()
    func rotateFast()
    
}

class TableFan: Rotatable {
    
    func rotateSlow() {
        print("rotate Slow")
    }
    
    func rotateFast() {
        print("rotate Fast")
    }
}

class HandFan: Rotatable {
    
    func rotateSlow() {
        print("rotate Slow")
    }
    
    func rotateFast() {
        // cant rotate fast
    }
    
}
 
let tableFan = TableFan()
tableFan.rotateSlow()
tableFan.rotateFast()

let handFan = HandFan()
handFan.rotateSlow()
handFan.rotateFast() // ? - - Bad Design
 
*/


// Good Design

protocol SlowRotatable {
    func rotateSlow()
}

protocol FastRotatable {
    func rotateFast()
}


class TableFan: SlowRotatable, FastRotatable {
    
    func rotateSlow() {
        
    }
    
    func rotateFast() {
        
    }
}

class HandFan: SlowRotatable {
    
    func rotateSlow() {
        
    }
}

let tableFan = TableFan()
tableFan.rotateSlow()
tableFan.rotateFast()

let handFan = HandFan()
handFan.rotateSlow()




