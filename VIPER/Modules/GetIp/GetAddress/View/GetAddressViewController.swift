//
//  GetAddressGetAddressViewController.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class GetAddressViewController: UIViewController, GetAddressViewInput {

    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var testView: TestView!
    
    var output: GetAddressViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainButton.layer.cornerRadius = 5
        
        output.viewIsReady()
    }

    // MARK: GetAddressViewInput
    func setupInitialState() {
    }
    
    func showWiFi(_ address: String) {
        print(address)
    }
    
    @IBAction func click(_ sender: UIButton) {
        output.getWiFiAddress()
    }
}
