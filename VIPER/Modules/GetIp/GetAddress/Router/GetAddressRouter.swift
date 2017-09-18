//
//  GetAddressGetAddressRouter.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class GetAddressRouter: GetAddressRouterInput {
    
    var viewController: UIViewController!
    
    func presentShowIp(_ address: String) {
        let showIp = ShowIpModuleInitializer()
        showIp.awakeFromNib()
        
        showIp.showipViewController.address = address
        
        viewController.present(showIp.showipViewController, animated: true, completion: nil)
    }
}
