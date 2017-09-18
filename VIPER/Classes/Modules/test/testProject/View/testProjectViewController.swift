//
//  testProjecttestProjectViewController.swift
//  VIPER
//
//  Created by generamba on 12/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class testProjectViewController: UIViewController, testProjectViewInput {

    var output: testProjectViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: testProjectViewInput
    func setupInitialState() {
    }
}
