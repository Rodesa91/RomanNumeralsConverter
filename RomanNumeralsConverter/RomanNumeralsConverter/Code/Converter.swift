//
//  Converter.swift
//  RomanNumeralsConverter
//
//  Created by Rodrigo de Santiago on 10/6/18.
//  Copyright © 2018 Rodrigo de Santiago. All rights reserved.
//


class Converter {

    func convertToRoman(_ number: Int) -> String {
        var localNumber = number
        var result = ""
        
        let numberSymbols: [(number: Int, symbol: String)] =
            [(1000, "M"),
             (900, "CM"),
             (500, "D"),
             (400, "CD"),
             (100, "C"),
             (90, "XC"),
             (50, "L"),
             (40, "XL"),
             (10, "X"),
             (9, "IX"),
             (5, "V"),
             (4, "IV"),
             (1, "I")]
        
        for item in numberSymbols {
            while localNumber >= item.number {
                result += item.symbol
                localNumber = localNumber - item.number
            }
        }
        
        return result
    }
    
}
