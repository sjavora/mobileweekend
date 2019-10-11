//
//  ViewController.swift
//  MVVM
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let viewModel: ViewModel
    private lazy var rootView = View()

    init(viewModel: ViewModel) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)

        viewModel.textDidChange = { [weak self] text in
            self?.rootView.label.text = text
            self?.rootView.setNeedsLayout()
        }
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

        viewModel.viewDidLoad()
    }

    @objc func buttonTapped(sender: UIButton) {
        viewModel.buttonTapped()
    }
}
