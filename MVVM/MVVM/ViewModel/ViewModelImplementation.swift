//
//  ViewModelImplementation.swift
//  MVVM
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

final class ViewModelImplementation: ViewModel {

    let model: Model
    weak var view: View?

    var textDidChange: ((String) -> Void)?

    init(model: Model) {
        self.model = model
    }

    func viewDidLoad() {
        textDidChange?(model.text)
    }

    func buttonTapped() {
        model.numberOfTaps += 1

        textDidChange?(model.text)
    }
}
