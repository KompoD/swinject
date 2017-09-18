//
//  LOLIXLOLIXPresenter.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class LOLIXPresenter {
    weak var view: LOLIXViewInput?
    var interactor: LOLIXInteractorInput!
    var router: LOLIXRouterInput!
}

extension LOLIXPresenter: LOLIXViewOutput {}

extension LOLIXPresenter: LOLIXInteractorOutput {}