//: A UIKit based Playground for presenting user interface
  
import UIKit

struct Name {
    let firstName: String
    let lastName: String
}

func generateRandomListOfNames(names:[Name]) -> [Name]{
    
    var mutabledNames = names
    var randomListOfNames = [Name]()
    
    while mutabledNames.count > 0 {
        // generate random index using Swift 4.1 syntax
        let randomIndex = Int(arc4random_uniform(UInt32(mutabledNames.count)))
        let randomStudent = mutabledNames[randomIndex]
        randomListOfNames.append(randomStudent)
        
        // remove remove student and loop again
        mutabledNames.remove(at: randomIndex)
    }
    return randomListOfNames
}

// Test Case:

let names = [
    Name(firstName: "Rico",lastName: "Tan"),
    Name(firstName: "May",lastName: "Kwok"),
    Name(firstName: "Luz",lastName: "Loo"),
    Name(firstName: "John",lastName: "Lee"),
]

let randomNames = generateRandomListOfNames(names: names)

func printRandomListNames(nameList: [Name]) {
    nameList.forEach { (name) in
        print("\(name.firstName),\(name.lastName)")
    }
}

printRandomListNames(nameList:randomNames)
