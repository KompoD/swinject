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

    weak var output: GetAddressInteractorOutput!
    
    //var API: IPPrortosaddress() {
        let myIp: IPProtocol//API.getWiFiAddress()
        myIp.getWiFiAddress()
        
        output.wiFiFetched(myIp ?? "")
    }
}
