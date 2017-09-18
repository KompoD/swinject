//
//  qwertyqwertyBuilder.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import Foundation
import UIKit

class qwertyBuilder {

    static func build() -> qwertyViewController {
	
		let viewController = // Init your own view controller here
        
		let router = qwertyRouter()

        let presenter = qwertyPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = qwertyInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
        
		return viewController
     }
	 
}