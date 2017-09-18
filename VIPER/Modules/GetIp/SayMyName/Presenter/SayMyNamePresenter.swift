//
//  SayMyNameSayMyNamePresenter.swift
//  VIPER
//
//  Created by generamba on 08/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class SayMyNamePresenter: SayMyNameModuleInput, SayMyNameViewOutput, SayMyNameInteractorOutput {

    weak var view: SayMyNameViewInput!
    var interactor: SayMyNameInteractorInput!
    var router: SayMyNameRouterInput!

    func viewIsReady() {

    }
}
