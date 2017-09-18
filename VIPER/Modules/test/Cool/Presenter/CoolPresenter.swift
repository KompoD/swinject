//
//  CoolCoolPresenter.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class CoolPresenter {
    weak var view: CoolViewInput?
    var interactor: CoolInteractorInput!
    var router: CoolRouterInput!
}

extension CoolPresenter: CoolViewOutput {}

extension CoolPresenter: CoolInteractorOutput {}