//
//  SayMyNameSayMyNameInitializer.swift
//  VIPER
//
//  Created by generamba on 08/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class SayMyNameModuleInitializer: NSObject {

    //Connect with object on storyboard
    var saymynameViewController: SayMyNameViewController!

    override func awakeFromNib() {
        
        let storyboard = UIStoryboard(name: "GetIp", bundle: nil)
        saymynameViewController = storyboard.instantiateViewController(withIdentifier :"SayMyNameViewController") as! SayMyNameViewController
        
        let configurator = SayMyNameModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: saymynameViewController)
    }

}
