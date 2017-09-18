//
//  testProjecttestProjectBuilder.swift
//  VIPER
//
//  Created by generamba on 12/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import Foundation
import UIKit

class testProjectBuilder {

    static func build() -> UIViewController {
	
		let viewController = // Init your own view controller here
        
		let router = testProjectRouter()

        let presenter = testProjectPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = testProjectInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
        
		return viewController
     }
	 
}