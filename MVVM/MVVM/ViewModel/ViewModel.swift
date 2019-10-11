//
//  ViewModel.swift
//  MVVM
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

protocol ViewModel: AnyObject {

    func viewDidLoad()

    func buttonTapped()

    var textDidChange: ((String) -> Void)? { get set }
}
