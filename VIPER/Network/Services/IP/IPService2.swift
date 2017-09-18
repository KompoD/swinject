//
//  IPService2.swift
//  VIPER
//
//  Created by Nikita Merkel on 08.09.17.
//  Copyright © 2017 Nikita Merkel. All rights reserved.
//

class IPService2: IPProtocol {
    
    private init(){}
    
    static var instance = IPService2()
    
    func getWiFiAddress() -> String? {
        return "Hello!"
    }
}
