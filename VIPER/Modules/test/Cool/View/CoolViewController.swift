//
//  CoolCoolViewController.swift
//  VIPER
//
//  Created by generamba on 13/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class CoolViewController: UIViewController {

    var output: CoolViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CoolViewController: CoolViewInput {}