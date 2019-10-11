//
//  Model.swift
//  MVI
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

final class Model: StateUpdater, ViewStateSource {

    var viewStateDidChange: ((ViewState) -> Void)? {
        didSet {
            sendViewStateUpdate()
        }
    }

    private(set) var numberOfTaps: Int = 0 {
        didSet {
            sendViewStateUpdate()
        }
    }

    func update(with intent: Intent) {
        switch intent {
            case .tapButton:
                numberOfTaps += 1
        }
    }

    private func sendViewStateUpdate() {
        viewStateDidChange?(viewState)
    }

    private var viewState: ViewState {
        ViewState(text: text)
    }

    private var text: String {
        if numberOfTaps > 0 {
            return "Tapped \(numberOfTaps) time\(numberOfTaps > 1 ? "s" : "")"
        } else {
            return "Tap the button"
        }
    }
}
