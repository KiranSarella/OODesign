//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

/*
 
 Software entities like classes, modules and functions should be open for extension but closed for modifications.
 
 */

// Interface
protocol CanShoot {
    func shoot() -> String
}

// Different Shoot objects
class leasarBeam: CanShoot {
    
    func shoot() -> String {
        return "ziiiiiip!"
    }
}

class RocketLauncher: CanShoot {
    
    func shoot() -> String {
        return "Whoosh!"
    }
}

// class is closed for modification
final class WeaponComposite {
    
    let weapons:[CanShoot]
    
    init(weapons:[CanShoot]) {
        self.weapons = weapons
    }
    
    func shoot() -> [String] {
        
        return weapons.map { $0.shoot() }
    }
}



// shoot objects
let leasar = leasarBeam()
let rocket = RocketLauncher()
// .. here we an create new shoot object.. that conforms to shoot interface

let weapons = WeaponComposite(weapons: [leasar, rocket]) // without modifying weapon we are passing different shoot objects
let result = weapons.shoot()
print(result)