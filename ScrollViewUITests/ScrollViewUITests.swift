//
//  ScrollViewUITests.swift
//  ScrollViewUITests
//
//  Created by Andrii on 1/1/19.
//  Copyright © 2019 Andrii. All rights reserved.
//

import XCTest

class ScrollViewUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testStopButtonExisting() {
        let scrollViewsQuery = XCUIApplication().scrollViews
        while !scrollViewsQuery.otherElements.buttons["СТОП"].isHittable {
            app.swipeUp()
        }
        XCTAssert(scrollViewsQuery.otherElements.buttons["СТОП"].isHittable)
    }
    
    func testOnceMoreButton() {
        let scrollViewsQuery = XCUIApplication().scrollViews
        while !scrollViewsQuery.otherElements.buttons["ЩЕ РАЗ"].isHittable {
            app.swipeUp()
        }
        XCTAssert(scrollViewsQuery.otherElements.buttons["ЩЕ РАЗ"].isHittable)
    }
    
    func testSomethingIntersting() {
        let scrollViewsQuery = XCUIApplication().scrollViews
        while !scrollViewsQuery.otherElements.buttons["ЩЕ РАЗ"].isHittable {
            app.swipeUp()
        }
    let screenshot = XCUIScreen.main.screenshot()
    let attachment = XCTAttachment(screenshot: screenshot)
    attachment.lifetime = .keepAlways
    XCTAssert(scrollViewsQuery.otherElements.buttons["ЩЕ РАЗ"].isHittable)
    }

}
