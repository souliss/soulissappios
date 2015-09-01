//
//  SocketerDelegate.swift
//  soulissappios
//
//  Created by Hatem Alimam on 01/09/15.
//  Copyright (c) 2015 Souliss. All rights reserved.
//

import Foundation

protocol SocketerDelegate {
    
    func didConnect()
    func didSend()
    func didNotSend()
    func didReceiveData(didReceiveData data: NSData!)
    
}
