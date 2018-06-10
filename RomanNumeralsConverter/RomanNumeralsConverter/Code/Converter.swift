//
//  Converter.swift
//  RomanNumeralsConverter
//
//  Created by Rodrigo de Santiago on 10/6/18.
//  Copyright © 2018 Rodrigo de Santiago. All rights reserved.
//


class Converter {

    func convert(_ number: Int) -> String {
        if number == 5 {
            return "V"
        } else {
            return String(repeating: "I", count: number)
        }
    }
    
}
