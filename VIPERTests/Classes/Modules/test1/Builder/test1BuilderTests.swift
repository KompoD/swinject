//
//  test1test1BuilderTests.swift
//  VIPER
//
//  Created by Nikita Merkel on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import Quick
import Nimble
@testable import //write your project name there

class test1BuilderTests: QuickSpec

	var viewController: test1ViewController!
    var presenter: test1Presenter!
    var interactor: test1Interactor!
    var router: test1Router!
    
    override func spec() {
        
        beforeSuite {
            self.viewController = test1Builder.build()
            self.presenter = self.viewController.output as! test1Presenter
            self.interactor = self.presenter.interactor as! test1Interactor
            self.router = self.presenter.router as! test1Router
        }
        
        describe("viewController") {
            it("should have not nil output") {
                expect(self.viewController.output).toNot(beNil())
            }
            it("should have output that conform test1Presenter protocol") {
                expect(self.viewController.output is test1Presenter).to(beTrue())
            }
        }
        
        describe("presenter") {
            it("should have not nil view") {
                expect(self.presenter.view).toNot(beNil())
            }
            it("should have not nil router") {
                expect(self.presenter.router).toNot(beNil())
            }
            it("should have not nil interactor") {
                expect(self.presenter.interactor).toNot(beNil())
            }
            it("should have router that conform test1Router protocol") {
                expect(self.presenter.router is test1Router).to(beTrue())
            }
            it("should have interactor that conform test1Interactor protocol") {
                expect(self.presenter.interactor is test1Interactor).to(beTrue())
            }
        }
        
        describe("interactor") {
            it("should have not nil output") {
                expect(self.interactor.output).toNot(beNil())
            }
        }
        
        describe("router") {
            it("should have not nil viewController") {
                expect(self.router.viewController).toNot(beNil())
            }
        }
    }
}