//
//  qwertyqwertyPresenter.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class qwertyPresenter {
    weak var view: qwertyViewInput?
    var interactor: qwertyInteractorInput!
    var router: qwertyRouterInput!
}

extension qwertyPresenter: qwertyViewOutput {}

extension qwertyPresenter: qwertyInteractorOutput {}