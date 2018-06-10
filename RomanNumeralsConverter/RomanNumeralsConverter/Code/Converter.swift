//
//  Converter.swift
//  RomanNumeralsConverter
//
//  Created by Rodrigo de Santiago on 10/6/18.
//  Copyright © 2018 Rodrigo de Santiago. All rights reserved.
//


class Converter {

    func convert(_ number: Int) -> String {
        var result = "" // 1
        var localNumber = number // 2

        if localNumber >= 10 { // 1
            result += "X" // 2
            localNumber = localNumber - 10 // 3
        }

        if localNumber >= 5 { // 3
            result += "V" // 4
            localNumber = localNumber - 5 // 5
        }
        result += String(repeating: "I", count: localNumber) // 6
        return result
    }
    
}
