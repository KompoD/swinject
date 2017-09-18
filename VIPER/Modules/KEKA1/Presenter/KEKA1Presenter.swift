//
//  KEKA1KEKA1Presenter.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class KEKA1Presenter {
    weak var view: KEKA1ViewInput?
    var interactor: KEKA1InteractorInput!
    var router: KEKA1RouterInput!
}

extension KEKA1Presenter: KEKA1ViewOutput {}

extension KEKA1Presenter: KEKA1InteractorOutput {}