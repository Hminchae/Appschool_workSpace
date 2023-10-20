//
//  swiftUI_practiceTests.swift
//  swiftUI_practiceTests
//
//  Created by 황민채 on 2023/10/20.
//

import XCTest
@testable import swiftUI_practice

final class swiftUI_practiceTests: XCTestCase {

    override func setUpWithError() throws { //밑작업
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws { //설거지
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws { // <- 얘만 기억 ~~~~
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let util = HUtility()
        XCTAssertEqual( util.something(6, 6), 12)
    }
    func testLeapYear() throws {
        let util = HUtility()
        XCTAssertEqual(true, util.isLeapYear(2020) ) // 함수부터 냅다 만든다
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
        //없어도 됨
    }

}
