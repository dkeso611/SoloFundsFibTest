//
//  FibItemViewModel_Tests.swift
//  SoloFundsFibTests
//
//  Created by Suru Layé on 3/18/22.
//

import XCTest
@testable import SoloFundsFib

class FibItemViewModel_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_FibItemViewModel_Input_isCorrect() throws {
        // given
        let input: Int = 2
        
        // when
        let vm = FibItemViewModel(input: input)
        
        // then
        XCTAssertEqual(vm.input, input)
    }
    

    func test_FibItemViewModel_fibonacciNumber_isCorrect() throws {
        // given
        let input: [Int] = [1, 2, 3, 4, 5, 6, 12]
        let expected: [String] = ["1", "1", "2", "3", "5", "8", "144"]
        
        // when
        var result: [String] = []
        for i in input {
            let vm = FibItemViewModel(input: i)
            result.append(vm.computedNumberString)
        }
        
        // then
        XCTAssertEqual(result, expected)
    }
    
    func test_FibItemViewModel_elapsedTime_isSet() throws {
        // given
        for _ in 1...100 {
            let input: Int = 2
            
            // when
            let vm = FibItemViewModel(input: input)
            
            // then
            XCTAssertGreaterThanOrEqual(vm.elapsedTime, 0.0)
        }
    }
    
    func test_FibItemViewModel_fibonnaciNumberString_returnsOverflow() throws {
        // given
        let input: Int = 1000000
        let expected: String = "Overflow"
        
        // when
        let vm = FibItemViewModel(input: input)
        
        // then
        XCTAssertEqual(vm.computedNumberString, expected)
    }
}
