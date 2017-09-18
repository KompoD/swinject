//
//  SayMyNameSayMyNameConfigurator.swift
//  VIPER
//
//  Created by generamba on 08/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class SayMyNameModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SayMyNameViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SayMyNameViewController) {

        let router = SayMyNameRouter()

        let presenter = SayMyNamePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SayMyNameInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
        
    }

}
