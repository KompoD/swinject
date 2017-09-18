//
//  KEKA1KEKA1Builder.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import Foundation
import UIKit

class KEKA1Builder {

    static func build() -> KEKA1ViewController {
	
		let viewController = // Init your own view controller here
        
		let router = KEKA1Router()

        let presenter = KEKA1Presenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = KEKA1Interactor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
        
		return viewController
     }
	 
}