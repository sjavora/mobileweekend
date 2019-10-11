//
//  ViewController.swift
//  MVI
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var rootView = UIKitView()
    private let stateUpdater: StateUpdater

    init(stateSource: ViewStateSource, stateUpdater: StateUpdater) {

        self.stateUpdater = stateUpdater

        super.init(nibName: nil, bundle: nil)

        stateSource.viewStateDidChange = { [weak self] state in
            self?.render(state: state)
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
    }

    @objc func buttonTapped(sender: UIButton) {
        stateUpdater.update(with: .tapButton)
    }
}

extension ViewController: View {

    func render(state: ViewState) {
        rootView.label.text = state.text
        rootView.setNeedsLayout()
    }
}
