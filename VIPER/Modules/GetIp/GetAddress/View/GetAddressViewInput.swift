//
//  GetAddressGetAddressViewInput.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

protocol GetAddressViewInput: class {

    /**
        @author generamba
        Setup initial state of the view
    */

    func setupInitialState()
    func showWiFi(_ address: String)
}
