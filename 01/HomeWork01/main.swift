//
//  main.swift
//  HomeWork01
//
//  Created by Vlad Bolibruk on 10/23/16.
//  Copyright © 2016 Vlad Bolibruk. All rights reserved.
//

//Import math functions
import Foundation

//Init values
var parsedString = ""


print("Please enter math. exp.")
var str = readLine()
//Test value
//var str = "2 +    (   3   *   sqrt ( 2  ) - sqrt (   4  )  )   /   5"


//delete whitespaces from string
extension String {
    var stringByRemovingWhitespaces: String {
        let components = self.components(separatedBy: .whitespaces)
        return components.joined(separator: "")
    }
}
var trimmedString = str?.stringByRemovingWhitespaces

//main magic
for i in (trimmedString?.characters)! {
    if let num = Int(String(i)) {
        parsedString +=  "\(num)"
    }else
    {
        parsedString += "\(i)"
    }
}
//Make an expression from "parsedString"
let expression = NSExpression(format:parsedString)
if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
    print("Your result: \(result)")
} else {
    print("error evaluating expression")
}

