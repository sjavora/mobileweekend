//
//  MVCUITestUITests.swift
//  MVCUITestUITests
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import XCTest

class MVCUITestUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    func testTextBeforeAndAfterTap() {

        let app = XCUIApplication()
        app.launch()

        let label = app.staticTexts[textAccessibilityIdentifier]
        let button = app.buttons[buttonAccessibilityIdentifier]

        XCTAssertEqual(label.label, "Tap the button")

        button.tap()

        XCTAssertEqual(label.label, "Tapped 1 time")
    }
}
