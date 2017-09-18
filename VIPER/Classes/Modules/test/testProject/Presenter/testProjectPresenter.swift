//
//  testProjecttestProjectPresenter.swift
//  VIPER
//
//  Created by generamba on 12/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class testProjectPresenter: testProjectModuleInput, testProjectViewOutput, testProjectInteractorOutput {

    weak var view: testProjectViewInput!
    var interactor: testProjectInteractorInput!
    var router: testProjectRouterInput!

    func viewIsReady() {

    }
}
