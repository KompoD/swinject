//
//  CoolCoolBuilder.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import Foundation
import UIKit

class CoolBuilder {

    static func build() -> CoolViewController {
	
		let viewController = // Init your own view controller here
        
		let router = CoolRouter()

        let presenter = CoolPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = CoolInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
        
		return viewController
     }
	 
}