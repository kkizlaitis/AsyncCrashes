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
            selector: #selector(asyncFunction),
            name: .AsyncNotification,
            object: nil
        )
    }

    @IBAction func ibActionButtonPressed() async {
        // Crash when called
    }
    
    @IBAction func notificationButtonPressed() {
        NotificationCenter.default.post(name: .AsyncNotification, object: nil)
    }
    
    @IBAction func performSelectorButtonPressed() {
        performSelector(onMainThread: #selector(asyncFunction), with: nil, waitUntilDone: false)
    }
    
    @objc func asyncFunction() async {
        // Crash when called
    }
    
}
