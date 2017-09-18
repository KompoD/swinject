//
//  KEKAKEKABuilder.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import Foundation
import UIKit

class KEKABuilder {

    static func build() -> KEKAViewController {
	
		let viewController = // Init your own view controller here
        
		let router = KEKARouter()

        let presenter = KEKAPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = KEKAInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
        
		return viewController
     }
	 
}