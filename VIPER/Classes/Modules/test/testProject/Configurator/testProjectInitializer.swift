//
//  testProjecttestProjectInitializer.swift
//  VIPER
//
//  Created by generamba on 12/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class testProjectModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var testprojectViewController: testProjectViewController!

    override func awakeFromNib() {

        let configurator = testProjectModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: testprojectViewController)
    }

}
