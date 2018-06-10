//
//  RomanNumeralsConverterTests.swift
//  RomanNumeralsConverterTests
//
//  Created by Rodrigo de Santiago on 10/6/18.
//  Copyright © 2018 Rodrigo de Santiago. All rights reserved.
//

import XCTest
@testable import RomanNumeralsConverter

class RomanNumeralsConverterTests: XCTestCase {
    
    let converter = Converter()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testConversionForOne() {
        let result = converter.convertToRoman(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }

    func testConversionForTwo() {
        let result = converter.convertToRoman(2)
        XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    
    func testConversionForFive() {
        let result = converter.convertToRoman(5)
        XCTAssertEqual(result, "V", "Conversion for 5 is incorrect")
    }
    
    func testConversionForSix() {
        let result = converter.convertToRoman(6)
        XCTAssertEqual(result, "VI", "Conversion for 6 is incorrect")
    }
    
    func testConversionForTen() {
        let result = converter.convertToRoman(10)
        XCTAssertEqual(result, "X", "Conversion for 10 is incorrect")
    }
    
    func testConversionForTwenty() {
        let result = converter.convertToRoman(20)
        XCTAssertEqual(result, "XX", "Conversion for 20 is incorrect")
    }
    
    func testConversionForFour() {
        let result = converter.convertToRoman(4)
        XCTAssertEqual(result, "IV", "Conversion for 4 is incorrect")
    }
    
    func testConversionForNine() {
        let result = converter.convertToRoman(9)
        XCTAssertEqual(result, "IX", "Conversion for 9 is incorrect")
    }
    
    func testConverstionForZero() {
        let result = converter.convertToRoman(0)
        XCTAssertEqual(result, "", "Conversion for 0 is incorrect")
    }
    
    func testConverstionFor3999() {
        let result = converter.convertToRoman(3999)
        XCTAssertEqual(result, "MMMCMXCIX", "Conversion for 3999 is incorrect")
    }
}
