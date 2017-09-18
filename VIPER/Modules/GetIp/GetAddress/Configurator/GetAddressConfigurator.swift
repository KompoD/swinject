//
//  GetAddressGetAddressConfigurator.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class GetAddressModuleConfigurator {
    
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? GetAddressViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: GetAddressViewController) {

        let router = GetAddressRouter()

        let presenter = GetAddressPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AppDelegate.container.resolve(GetAddressInteractor.self)!
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
    }

}
