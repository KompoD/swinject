//
//  GetAddressGetAddressInitializer.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class GetAddressModuleInitializer: NSObject {
    
    var getaddressViewController: GetAddressViewController!

    override func awakeFromNib() {
        
        let storyboard = UIStoryboard(name: "GetIp", bundle: nil)
        getaddressViewController = storyboard.instantiateViewController(withIdentifier :"GetAddressViewController") as! GetAddressViewController
        
        let configurator = GetAddressModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: getaddressViewController)
    }

}
