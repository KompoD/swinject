//
//  testProjecttestProjectConfigurator.swift
//  VIPER
//
//  Created by generamba on 12/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class testProjectModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? testProjectViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: testProjectViewController) {

        let router = testProjectRouter()

        let presenter = testProjectPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = testProjectInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
