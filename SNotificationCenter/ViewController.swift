//
//  ViewController.swift
//  SNotificationCenter
//
//  Created by Sunil Verma on 24/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SNotificationManager.addObserver(observer: self, type: .jwtTokenExpired, selector: #selector(tokenExpired(noti:)))
        SNotificationManager.addObserver(observer: self, type: .localDidChanged, selector: #selector(localDidChanged(noti:)))

    }

    @objc fileprivate func tokenExpired(noti: NSNotification) {
        if let expired = noti.object as? Bool {
            print(" expired: \(expired)")
        }
    }
    
    @objc fileprivate func localDidChanged(noti: NSNotification) {
        if let changed = noti.object as? Bool {
            print(" changed: \(changed)")
        }
    }

    
    @IBAction func tokenExpiredTapped() {
        SNotificationManager.postObserver(type: .jwtTokenExpired, object: true)
    }
    
    @IBAction func localChangeTapped() {
        SNotificationManager.postObserver(type: .localDidChanged, object: true)

    }
}

