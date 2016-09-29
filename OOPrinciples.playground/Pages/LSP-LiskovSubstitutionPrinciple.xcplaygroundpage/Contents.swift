//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

/*

Base class can be replaced with a Derived class without affecting the functionality of the program module.

*/

// Super Class
class Animal {
    
    func legs() -> String {
        return "Animal Legs"
    }
    
    func teeth() -> String {
        return "Animal Teeth"
    }
}

// Subclasses
class Dog: Animal {
    // superclass methods
    override func legs() -> String {
        return "Dog legs"
    }
    
    override func teeth() -> String {
        return "Dog teeth"
    }
    // own method
    func faithfullness() -> String {
        return "Dog Faithfullness"
    }
}

class Buffalo: Animal {
    // superclass method
    override func legs() -> String {
        return "Buffalo legs"
    }
    
    override func teeth() -> String {
        return "Duffalo teeth"
    }
    // own method
    func milkQuality() -> String {
        return "Milk Quality: 100%"
    }
}

class Human: Animal {
    // superclass method
    override func legs() -> String {
        return "Human legs"
    }
    
    override func teeth() -> String {
        return "Human teeth"
    }
    // own method
    func intellegence() -> String {
        return "Human spece is intellgent"
    }
}

// -----
class Feed {
    
    func feed(animal:Animal) {
        
        print(animal.teeth())
    }
}


let animal = Animal()
let dog = Dog()
let bufallo = Buffalo()
let human = Human()


let feed = Feed()

feed.feed(animal: animal) // base class
feed.feed(animal: dog) // base class is replaced with derieved class
feed.feed(animal: bufallo)
feed.feed(animal: human)
