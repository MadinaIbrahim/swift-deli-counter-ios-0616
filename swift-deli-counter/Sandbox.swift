//  Sandbox.swift

import Foundation

class DeliCounter {
    
    func stringForDeliLine(deliLine:[String]) -> String {
        
        switch true {
        case deliLine.isEmpty:
            return "The line is currently empty"
        default:
            var line = "The line is:\n"
            for (index,person)in deliLine.enumerate(){
                line += ("\(index + 1). \(person)\n")
            }
            return line
        }
    }
    
    func addName(name:String, toDeliLine:[String]) -> [String] {
        
        switch true {
        case toDeliLine.isEmpty:
            print ("There is nobody in the line right now.")
        default:
            var updatedLine = toDeliLine
            updatedLine.append(name)
            print(updatedLine)
            print("Welcome \(name), your number in line is \(updatedLine.count).")
        }
        return toDeliLine
    }
    
    func serveNextCustomerInDeliLine(deliLine:[String]) -> [String] {
        var newLine = deliLine
        if deliLine.isEmpty{
            print("The line is empty")
            
        } else {
            print("Welcome \(newLine[0]), you are first in line!")
            newLine.removeFirst()
        }
        return newLine
    }
    
}

