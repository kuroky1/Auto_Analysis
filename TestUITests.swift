//
//  LalaTestUITests.swift
//  LalaTestUITests
//
//  Created by Kuroky on 2018/11/8.
//  Copyright © 2018 Kenneth. All rights reserved.
//

import XCTest

class TestUITests_tap: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_tap() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        sleep(20)
        let app = XCUIApplication()
        let deliveriestableviewTable = app.tables["DeliveriesTableView"]
        deliveriestableviewTable.children(matching: .cell).element(boundBy: 0).images["DeliveryCellPhoto"].tap()
        
        let backButton = app.navigationBars["Delivery Detail"].buttons["Back"]
        backButton.tap()
        
        app.screenshot()
        
        deliveriestableviewTable.children(matching: .cell).element(boundBy: 1).staticTexts["DeliveryCellTitle"].tap()
        backButton.tap()
        deliveriestableviewTable.children(matching: .cell).element(boundBy: 2).staticTexts["DeliveryCellSubtitle"].tap()
        backButton.tap()
        
        
        //delete,now long press will crash
        deliveriestableviewTable.children(matching: .cell).element(boundBy: 0).images["DeliveryCellPhoto"]/*@START_MENU_TOKEN@*/.press(forDuration: 1.2);/*[[".tap()",".press(forDuration: 1.2);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        
    }
    
    
}

