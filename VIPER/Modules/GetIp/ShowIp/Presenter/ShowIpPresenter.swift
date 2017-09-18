//
//  ShowIpShowIpPresenter.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class ShowIpPresenter: ShowIpModuleInput, ShowIpViewOutput, ShowIpInteractorOutput {

    weak var view: ShowIpViewInput!
    var interactor: ShowIpInteractorInput!
    var router: ShowIpRouterInput!
    
    func viewIsReady() {
    }
    
    func present() {
        router.presentSayMyName()
    }
    
}
