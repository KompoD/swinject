//
//  KEKAKEKAPresenter.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class KEKAPresenter {
    weak var view: KEKAViewInput?
    var interactor: KEKAInteractorInput!
    var router: KEKARouterInput!
}

extension KEKAPresenter: KEKAViewOutput {}

extension KEKAPresenter: KEKAInteractorOutput {}