//
//  GetAddressGetAddressInteractor.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit
import Swinject

class GetAddressInteractor: GetAddressInteractorInput {

    let network: IPProtocol
    weak var output: GetAddressInteractorOutput!
    
    init(network: IPProtocol) {
        self.network = network
    }
    
    func getWiFiAddress() {
        let ip = network.getWiFiAddress()
        output.wiFiFetched(ip ?? "")
    }
}
