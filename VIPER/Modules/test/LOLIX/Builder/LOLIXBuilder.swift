//
//  LOLIXLOLIXBuilder.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import Foundation
import UIKit

class LOLIXBuilder {

    static func build() -> LOLIXViewController {
	
		let viewController = // Init your own view controller here
        
		let router = LOLIXRouter()

        let presenter = LOLIXPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = LOLIXInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
        
		return viewController
     }
	 
}