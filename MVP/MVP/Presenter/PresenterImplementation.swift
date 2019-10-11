//
//  PresenterImplementation.swift
//  MVP
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

final class PresenterImplementation {

    let model: Model
    weak var view: View?

    init(model: Model) {
        self.model = model
    }
}

extension PresenterImplementation: Presenter {

    func viewDidLoad() {
        view?.setText(model.text)
    }

    func buttonTapped() {
        model.numberOfTaps += 1

        view?.setText(model.text)
    }
}
