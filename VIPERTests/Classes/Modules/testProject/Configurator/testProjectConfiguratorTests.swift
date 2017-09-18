//
//  testProjecttestProjectConfiguratorTests.swift
//  VIPER
//
//  Created by generamba on 12/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import XCTest

class testProjectModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = testProjectViewControllerMock()
        let configurator = testProjectModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "testProjectViewController is nil after configuration")
        XCTAssertTrue(viewController.output is testProjectPresenter, "output is not testProjectPresenter")

        let presenter: testProjectPresenter = viewController.output as! testProjectPresenter
        XCTAssertNotNil(presenter.view, "view in testProjectPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in testProjectPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is testProjectRouter, "router is not testProjectRouter")

        let interactor: testProjectInteractor = presenter.interactor as! testProjectInteractor
        XCTAssertNotNil(interactor.output, "output in testProjectInteractor is nil after configuration")
    }

    class testProjectViewControllerMock: testProjectViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
