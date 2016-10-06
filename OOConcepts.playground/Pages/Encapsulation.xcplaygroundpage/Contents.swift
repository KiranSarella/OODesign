//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

/*
 
 Def: Inorder to change value of a varialbe, use methods
 https://www.youtube.com/watch?v=tt_astMjep0
 
 https://www.youtube.com/watch?v=HYEuwp2S70g
 
 
 Encapsulation means that objects keep their state information private. Rather than directly manipulating an object’s data, other objects send requests to the object, in the form of messages, some of which the object may respond to by altering its internal state.
 
 */


// Bad Design
//
//class Person {
//    
//    var age: Int = 0
//    
//}
//
//let person = Person()
//person.age = -20 // here we are accessing varable directly
//person.age



// Good Design

class Person {
    
    private var age: Int = 0
    
    func setAge(age: Int) {
        
        if age > 18 && age < 60 {
            self.age = age
        }
    }
    
    func getAge() -> Int {
        
        return self.age
    }
}


let person = Person()
person.setAge(age: -20)
person.getAge()

person.setAge(age: 27)
person.getAge()

// adv: here we have control over data.
// here we are restricting setting wrong age







