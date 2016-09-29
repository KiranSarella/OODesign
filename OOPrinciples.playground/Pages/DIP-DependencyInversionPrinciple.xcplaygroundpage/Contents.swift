//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// Dependency Inversion Principle

// https://www.youtube.com/watch?v=9UOqtnK9ZpQ
// 


// High Leve Interface
protocol IReader {
    func read()
}

protocol IWriter {
    func write()
}

// Low level detail
class ConsoleReader: IReader {
    
    func read() {
        print("reading from console")
    }
}

class ConsoleWrite: IWriter {
    
    func write() {
        print("writing to console")
    }
}

// High level Implementation
class CopyProcess {
    
    private let reader: IReader
    private let writer: IWriter
    
    init(reader:IReader, writer:IWriter) {
        self.reader = reader
        self.writer = writer
    }
    
    func execute() {
        
        reader.read()
        writer.write()
    }
    
}


var reader = ConsoleReader()
var writer = ConsoleWrite()

var copyProgress = CopyProcess(reader: reader, writer: writer)
copyProgress.execute()

// without modifying high level detail we can add new..

class FileReader: IReader {
    
    func read() {
        print("reading from File")
    }
}

class FileWriter: IWriter {
    func write() {
        print("write to file")
    }
}

var fileReader = FileReader()
var fileWriter = FileWriter()

var copyFile = CopyProcess(reader: fileReader, writer: fileWriter)
copyFile.execute()
// we dint modified CopyProgress, def: both high level modules and low level modules depend on interface
// we dont modified interface, we modified or created low level classes, Def2: detail is depend on hight level interface (not interface depend on detail)







