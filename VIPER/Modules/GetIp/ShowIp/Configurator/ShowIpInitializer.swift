//
//  ShowIpShowIpInitializer.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class ShowIpModuleInitializer: NSObject {

    //Connect with object on storyboard
    var showipViewController: ShowIpViewController!

    override func awakeFromNib() {
        
        let storyboard = UIStoryboard(name: "GetIp", bundle: nil)
        showipViewController = storyboard.instantiateViewController(withIdentifier :"ShowIpViewController") as! ShowIpViewController
        
        let configurator = ShowIpModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: showipViewController)
    }

}
