//
//  Swinject+Setup.swift
//  VIPER
//
//  Created by Nikita Merkel on 13.09.17.
//  Copyright © 2017 Nikita Merkel. All rights reserved.
//

import SwinjectStoryboard
import Swinject

/*extension SwinjectStoryboard {
    class func setup() {
    
        defaultContainer.register(IPProtocol.self) { _ in IPService.instance }
        defaultContainer.register(GetAddressInteractor.self) { r in
            let interactor = GetAddressInteractor(network: r.resolve(IPProtocol.self)!)
            return interactor
        }
    }
}
*/
