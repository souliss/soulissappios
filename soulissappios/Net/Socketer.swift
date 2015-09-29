//
//  InSocket.swift
//  soulissappios
//
//  Created by Hatem Alimam on 01/09/15.
//  Copyright (c) 2015 Souliss. All rights reserved.
//

import CocoaAsyncSocket

import Foundation

class Socketer: NSObject, GCDAsyncUdpSocketDelegate {
    
    var IP = ""
    let PORT:UInt16 = 230
    var socket:GCDAsyncUdpSocket!
    var socketerDelegate:SocketerDelegate!
    
    init(socketerDelegate intiSocketerDelegate: SocketerDelegate, IP: String) {
        super.init()
        socketerDelegate = intiSocketerDelegate
        self.IP = IP
        setupConnection()
    }
    
    func setupConnection(){
        socket = GCDAsyncUdpSocket(delegate: self, delegateQueue: dispatch_get_main_queue())
        do {
            try socket.bindToPort(PORT)
            try socket.connectToHost(IP, onPort: PORT)
            try socket.beginReceiving()
        } catch {
            
        }
        
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didReceiveData data: NSData!, fromAddress address: NSData!,      withFilterContext filterContext: AnyObject!) {
        print("incoming message: \(data)");
        socketerDelegate.didReceiveData(didReceiveData: data)
    }
    
    func send(data:NSData){
        socket.sendData(data, withTimeout: 2, tag: 0)
        print("localAddress is: \(socket.localAddress())")
        print("localHost is: \(socket.localHost())")
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didConnectToAddress address: NSData!) {
        print("didConnectToAddress");
        socketerDelegate.didConnect()
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didNotConnect error: NSError!) {
        print("didNotConnect \(error)")
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didSendDataWithTag tag: Int) {
        print("didSendDataWithTag")
        socketerDelegate.didSend()
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didNotSendDataWithTag tag: Int, dueToError error: NSError!) {
        print("didNotSendDataWithTag")
        socketerDelegate.didNotSend()
    }
}