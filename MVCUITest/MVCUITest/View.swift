//
//  View.swift
//  MVCUITest
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

import UIKit

final class View: UIView {

    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Tap me!", for: .normal)
        button.accessibilityIdentifier = buttonAccessibilityIdentifier
        return button
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .darkText
        label.accessibilityIdentifier = textAccessibilityIdentifier
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)

        backgroundColor = .white

        addSubview(button)
        addSubview(label)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setText(_ text: String) {
        label.text = text
        setNeedsLayout()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        button.sizeToFit()
        button.center = CGPoint(x: bounds.midX, y: bounds.midY - 50)

        label.sizeToFit()
        label.center = CGPoint(x: bounds.midX, y: bounds.midY + 50)
    }
}
