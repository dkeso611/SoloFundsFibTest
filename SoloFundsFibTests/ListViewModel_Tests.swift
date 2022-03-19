//
//  SoloFundsFibTests.swift
//  SoloFundsFibTests
//
//  Created by Suru Layé on 3/17/22.
//

import XCTest
@testable import SoloFundsFib

class ListViewModel_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_ListViewModel_init_shouldNotBeEmpty() throws {

        // given
        let vm = FibListViewModel()

        // when
        
        // then
        XCTAssertFalse(vm.list.isEmpty)
    }
    
    func test_ListViewModel_clear_listShouldBeEmpty() throws {

        // given
        let vm = FibListViewModel()

        // when
        vm.clear()
        // then
        XCTAssertTrue(vm.list.isEmpty)
    }
    
    func test_ListViewModel_addItem_listShouldAddItem() throws {

        // given
        let vm = FibListViewModel()
        let testInput: FibItemViewModel = .init(input: 5)
        
        // when
        vm.add(item: testInput)
        
        // then
        XCTAssertFalse(vm.list.isEmpty)
        XCTAssertTrue(vm.list.last == testInput)
    }
    
    func test_ListViewModel_calculateTotalTime_shouldHaveValue() throws {

        // given
        let vm = FibListViewModel()
        
        // then
        XCTAssertTrue(vm.calculateTotalTime() > 0.0)
    }
    
    func test_ListViewModel_calculateTotalTime_shouldHaveNoValue() throws {

        // given
        let vm = FibListViewModel()
        // when
        vm.clear()
        // then
        XCTAssertTrue(vm.calculateTotalTime() == 0.0)
    }
    
    
    func test_ListViewModel_validateInput_invalidInput() throws {

        // given
        let vm = FibListViewModel()
        let input = "invalid"
        // when
        vm.clear()
        vm.validate(term: input)
    
        // then
        XCTAssertTrue(vm.list.isEmpty)
        XCTAssertTrue(vm.showAlert)
    }
    
    func test_ListViewModel_validateInput_shouldAddItem() throws {

        // given
        let vm = FibListViewModel()
        let input = "15"
        // when
        vm.clear()
        vm.validate(term: input)
    
        // then
        XCTAssertFalse(vm.list.isEmpty)
        XCTAssertFalse(vm.showAlert)
    }

}
