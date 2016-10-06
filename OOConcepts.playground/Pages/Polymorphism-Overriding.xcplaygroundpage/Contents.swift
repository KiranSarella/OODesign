//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

/*
 
 Ref: https://www.youtube.com/watch?v=Qt_XFk6PR_M#t=77.151208704
 
 */


// Method Overriding
// we can override methods, ie same fuction but different form (ie diff. behaviour)
// Runtime polymorphism


// No operator over

class View {
    
    let alpha:Float = 1.0
    
    func draw() {
        print("Draw nothing")
    }
    
    func sizeToFit() {
        
        print("size to fit")
    }
}

class EmptyView: View {
    
}

class PDFView: View {
    
   // let alpha: Float = 0.5 
    // Cannot override stored properties
    
    override func draw() {
        print("Draw PDF")
    }
    
    override func sizeToFit() {
        print("fit to PDF")
    }
}



class BackgroundView: View {
    
    override func draw() {
        print("Draw Background")
    }
    
}

let emptyView = EmptyView()
let pdfView = PDFView()
let backgroundView = BackgroundView()

emptyView.draw()
pdfView.draw()
backgroundView.draw()

pdfView.sizeToFit()
backgroundView.sizeToFit()




