//
//  Model.swift
//  MVCUITest
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

final class Model {

    var numberOfTaps: Int = 0

    var text: String {
        if numberOfTaps > 0 {
            return "Tapped \(numberOfTaps) time\(numberOfTaps > 1 ? "s" : "")"
        } else {
            return "Tap the button"
        }
    }
}
