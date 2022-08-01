//
//  ViewController.swift
//  AsyncIBActionCrash
//
//  Created by Kasparas Kizlaitis on 2022-08-01.
//

import UIKit

extension Notification.Name {
    static let AsyncNotification = Notification.Name("AsyncNotification")
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(observerNotification(_:)),
            name: .AsyncNotification,
            object: nil
        )
    }

    @IBAction func ibActionButtonPressed() async {
        
    }
    
    @IBAction func notificationButtonPressed() {
        NotificationCenter.default.post(name: .AsyncNotification, object: nil)
    }
    
    @objc func observerNotification(_ notification: Notification) async {
        
    }
    
}
