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
        var error : NSError?
        socket = GCDAsyncUdpSocket(delegate: self, delegateQueue: dispatch_get_main_queue())
        socket.bindToPort(PORT, error: &error)
        socket.connectToHost(IP, onPort: PORT, error: &error)
        socket.beginReceiving(&error)
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didReceiveData data: NSData!, fromAddress address: NSData!,      withFilterContext filterContext: AnyObject!) {
        println("incoming message: \(data)");
        socketerDelegate.didReceiveData(didReceiveData: data)
    }
    
    func send(data:NSData){
        socket.sendData(data, withTimeout: 2, tag: 0)
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didConnectToAddress address: NSData!) {
        println("didConnectToAddress");
        socketerDelegate.didConnect()
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didNotConnect error: NSError!) {
        println("didNotConnect \(error)")
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didSendDataWithTag tag: Int) {
        println("didSendDataWithTag")
        socketerDelegate.didSend()
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket!, didNotSendDataWithTag tag: Int, dueToError error: NSError!) {
        println("didNotSendDataWithTag")
        socketerDelegate.didNotSend()
    }
}