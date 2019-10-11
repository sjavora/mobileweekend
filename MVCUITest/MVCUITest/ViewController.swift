//
//  ViewController.swift
//  MVCUITest
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var model = Model()
    private lazy var rootView = View()

    init(model: Model) {
        self.model = model

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = rootView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        rootView.button.addTarget(self, action: #selector(buttonTapped(sender:)), for: .touchUpInside)

        rootView.setText(model.text)
    }

    @objc func buttonTapped(sender: UIButton) {
        model.numberOfTaps += 1

        rootView.setText(model.text)
    }
}
