//
//  ViewController.swift
//  MVP
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let presenter: Presenter
    private lazy var rootView = UIKitView()

    init(presenter: Presenter) {
        self.presenter = presenter

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

        presenter.viewDidLoad()
    }

    @objc func buttonTapped(sender: UIButton) {
        presenter.buttonTapped()
    }
}

extension ViewController: View {

    func setText(_ text: String) {
        rootView.label.text = text
        rootView.setNeedsLayout()
    }
}
