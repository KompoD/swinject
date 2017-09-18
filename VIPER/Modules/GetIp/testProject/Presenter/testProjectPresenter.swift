//
//  testProjecttestProjectPresenter.swift
//  VIPER
//
//  Created by generamba on 12/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

class testProjectPresenter {
    weak var view: testProjectViewInput?
    var interactor: testProjectInteractorInput!
    var router: testProjectRouterInput!
}

extension testProjectPresenter: testProjectViewOutput {}

extension testProjectPresenter: testProjectInteractorOutput {}