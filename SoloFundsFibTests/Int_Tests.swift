//
//  Int_Tests.swift
//  SoloFundsFibTests
//
//  Created by Suru Layé on 3/19/22.
//

import XCTest
@testable import SoloFundsFib



class Int_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Int_getFibonacciNumber_isCorrect() throws {
        // given
        let input: [Int] = [1, 2, 3, 4, 5, 6, 12]
        let expected: [Int] = [1, 1, 2, 3 , 5, 8, 144]
        
        // when
        var result: [Int] = []
        for i in input {
            result.append(i.getFibonacciNumber())
        }
        
        // then
        XCTAssertEqual(result, expected)
    }
    
    func test_Int_getFibonacciNumber_negativeInteger_isCorrect() throws {
        // given
        let input: [Int] = [-1, -2, -3, -4, -5, -6, 12]
        let expected: [Int] = [0, 0, 0, 0 , 0, 0, 144]
        
        // when
        var result: [Int] = []
        for i in input {
            result.append(i.getFibonacciNumber())
        }
        
        // then
        XCTAssertEqual(result, expected)
    }
    
    func test_Int_getFibonacciNumber_overflow_isCorrect() throws {        // given
        let input: Int = 1000000
        let expected: Int = -1
        
        // when
        // then
        XCTAssertEqual(input.getFibonacciNumber(), expected)
    }
}
