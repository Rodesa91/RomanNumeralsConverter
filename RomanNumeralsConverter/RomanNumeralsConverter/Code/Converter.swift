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
    
    func convertToDecimal(_ number: String) -> Int {
        var decimal = 0
        var lastNumber = 0
        print(number)
        for character in number.uppercased().reversed() {
            print(character)
            switch character {
            case "M":
                decimal = processDecimal(_decimal: 1000, _lastNumber: lastNumber, _lastDecimal: decimal)
                lastNumber = 1000
                break
            case "D":
                decimal = processDecimal(_decimal: 500, _lastNumber: lastNumber, _lastDecimal: decimal)
                lastNumber = 500
                break
            case "C":
                decimal = processDecimal(_decimal: 100, _lastNumber: lastNumber, _lastDecimal: decimal)
                lastNumber = 100
                break
            case "L":
                decimal = processDecimal(_decimal: 50, _lastNumber: lastNumber, _lastDecimal: decimal)
                lastNumber = 50
                break
            case "X":
                decimal = processDecimal(_decimal: 10, _lastNumber: lastNumber, _lastDecimal: decimal)
                lastNumber = 10
                break
            case "V":
                decimal = processDecimal(_decimal: 5, _lastNumber: lastNumber, _lastDecimal: decimal)
                lastNumber = 5
                break
            case "I":
                decimal = processDecimal(_decimal: 1, _lastNumber: lastNumber, _lastDecimal: decimal)
                lastNumber = 1
                break
            default :
                decimal = 0
                lastNumber = 0
                return -1
            }
        }
        
        return decimal
    }
    
    func processDecimal(_decimal:Int, _lastNumber:Int, _lastDecimal:Int) -> Int{
        if _lastNumber > _decimal {
            return _lastDecimal - _decimal
        }
        return  _decimal + _lastDecimal
    }
    
}
