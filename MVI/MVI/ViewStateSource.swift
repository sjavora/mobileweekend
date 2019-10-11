//
//  ViewStateSource.swift
//  MVI
//
//  Created by Šimon Javora on 11/10/2019.
//  Copyright © 2019 Kiwi.com. All rights reserved.
//

protocol ViewStateSource: AnyObject {

    var viewStateDidChange: ((ViewState) -> Void)? { get set }
}
