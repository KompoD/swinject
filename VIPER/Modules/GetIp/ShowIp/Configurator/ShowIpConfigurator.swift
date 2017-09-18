//
//  ShowIpShowIpConfigurator.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class ShowIpModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ShowIpViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ShowIpViewController) {

        let router = ShowIpRouter()

        let presenter = ShowIpPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ShowIpInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        router.viewController = viewController
    }
}
