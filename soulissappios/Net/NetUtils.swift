//
//  NetUtils.swift
//  soulissappios
//
//  Created by Hatem Alimam on 29/09/15.
//  Copyright © 2015 Souliss. All rights reserved.
//

import Foundation

class NetUtils {
    
    func splitIPv4(ip: String) -> (first: UInt8, second: UInt8 ,third: UInt8, fourth: UInt8)? {
        if ip.isEmpty {return nil}
        
        let ips = ip.characters.split {$0 == "."}.map(String.init)
        
        return (UInt8(ips[0])!, UInt8(ips[1])!, UInt8(ips[2])!, UInt8(ips[3])!)
    }
    
}
