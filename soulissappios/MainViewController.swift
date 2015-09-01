//
//  ViewController.swift
//  soulissappios
//
//  Created by Hatem Alimam on 31/08/15.
//  Copyright (c) 2015 Souliss. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, SocketerDelegate {

    @IBOutlet weak var testBtn: UIButton!
    @IBOutlet weak var ipAddressTextField: UITextField!
    @IBOutlet weak var responseTextView: UITextView!
    
    var socketer : Socketer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendAction(sender: AnyObject) {
        var endMarker = NSData(bytes: [0xc, 0xb, 0x17 ,0xb1, 0x0, 0x6, 0x5, 0x8, 0xb1, 0x0, 0x0, 0x0] as [UInt8], length: 12)
        
        if !ipAddressTextField.text.isEmpty {
            socketer = Socketer(socketerDelegate: self, IP: ipAddressTextField.text)
            socketer.send(endMarker)
            self.view.endEditing(true)
            
        } else {
            let alertController = UIAlertController(title: "Souliss", message:
                "You need to specify an IP", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }
    
    func didConnect() {
        responseTextView.text = responseTextView.text + "\n" + "Did Connect"
    }
    
    func didSend() {
        responseTextView.text = responseTextView.text + "\n" + "Did Send"
    }
    
    func didReceiveData(didReceiveData data: NSData!) {
        responseTextView.text = responseTextView.text + "\ndidReceiveData: " + "\(data)"
    }
    
    func didNotSend() {
        responseTextView.text = responseTextView.text + "\nDid not Send !"
    }
    

}

