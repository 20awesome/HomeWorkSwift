//
//  main.swift
//  
//
//  Created by Vlad Bolibruk on 10/23/16.
//
//

import Foundation
var str2 = ""
var value2: Double
print("Please enter math. exp.")
if let inputstring = readLine() {
    var str = inputstring
} else {
    var str = "some string"
}

//var str = "2 +    (   3   *   sqrt ( 2  ) - sqrt (   4  )  )   /   5"

extension String {
    
    var stringByRemovingWhitespaces: String {
        
        let components = self.components(separatedBy: .whitespaces)
        return components.joined(separator: "")
    }
}

var trimmedString = str.stringByRemovingWhitespaces
for i in trimmedString.characters {
    //    var num = i
    if let num = Int(String(i)) {
        //        print(num)
        str2 +=  "\(num)"
    }else
    {
        str2 += "\(i)"
    }
}
let expression = NSExpression(format:str2)
if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
    print(result)
} else {
    print("error evaluating expression")
}
