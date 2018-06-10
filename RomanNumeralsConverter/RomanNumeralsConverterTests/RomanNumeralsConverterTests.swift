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
        let result = converter.convert(1)
        XCTAssertEqual(result, "I", "Conversion for 1 is incorrect")
    }

    func testConversionForTwo() {
        let result = converter.convert(2)
        XCTAssertEqual(result, "II", "Conversion for 2 is incorrect")
    }
    
    func testConversionForFive() {
        let result = converter.convert(5)
        XCTAssertEqual(result, "V", "Conversion for 5 is incorrect")
    }
    
}
