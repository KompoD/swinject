//
//  SayMyNameSayMyNameViewController.swift
//  VIPER
//
//  Created by generamba on 08/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class SayMyNameViewController: UIViewController, SayMyNameViewInput, UITextFieldDelegate {

    var output: SayMyNameViewOutput!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    @IBAction func sayYourName(_ sender: UIButton) {
        nameLabel.text = "MY NAME IS \(nameTextField.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK: SayMyNameViewInput
    func setupInitialState() {
    }
}
