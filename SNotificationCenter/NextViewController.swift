//
//  NextViewController.swift
//  SNotificationCenter
//
//  Created by Sunil Verma on 24/05/24.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SObserverManager.shared.addObserver(observer: self)
    }
    
    @IBAction func notifyObserversTapped() {
        SObserverManager.shared.printObservers()
        SObserverManager.shared.notifiOserver()
    }
    deinit {
        print(" ==== Deinti NextViewController")
        SObserverManager.shared.removeObserver(observer: self)
    }
}


extension NextViewController :SObserver {
    func notifyUpdate() {
        print("Observers notified Next")
    }
    
    
}

