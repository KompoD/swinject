//
//  ShowIpShowIpViewController.swift
//  VIPER
//
//  Created by generamba on 07/09/2017.
//  Copyright © 2017 OFKBank. All rights reserved.
//

import UIKit

class ShowIpViewController: UIViewController, ShowIpViewInput {

    var address: String?
    
    var output: ShowIpViewOutput!
    
    @IBOutlet weak var ipLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var downButton: UIButton!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ipLabel.text = address
        
        output.viewIsReady()
    }

    @IBAction func valueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        print("Slider changing to \(currentValue)")
        ipLabel.font = UIFont.systemFont(ofSize: CGFloat(sender.value))
    }

    @IBAction func clicked(_ sender: UIButton) {
        print("Button was pressed")
        
        output.present()

    }
    
    // MARK: ShowIpViewInput
    func setupInitialState() {
    }
}
