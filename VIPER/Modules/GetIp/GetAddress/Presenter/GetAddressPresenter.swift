//
//  GetAddressGetAddressPresenter.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class GetAddressPresenter: GetAddressModuleInput, GetAddressViewOutput, GetAddressInteractorOutput {

    weak var view: GetAddressViewInput!
    var interactor: GetAddressInteractorInput!
    var router: GetAddressRouterInput!

    func viewIsReady() {

    }
    
    func wiFiFetched(_ ip: String) {
        router.presentShowIp(ip)
    }
    
    func getWiFiAddress() {
        interactor.getWiFiAddress()
    }
}
