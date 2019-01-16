//
//  ScrollViewTests.swift
//  ScrollViewTests
//
//  Created by Andrii on 1/1/19.
//  Copyright © 2019 Andrii. All rights reserved.
//

import XCTest
@testable import ScrollView

class ScrollViewTests: XCTestCase {
    var app: XCUIApplication!
   
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        
        
    }

    override func tearDown() {
       super.tearDown()
    }

    func testExample() {
        XCUIApplication().buttons.staticTexts["Страшна японська музика..."].tap()
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
