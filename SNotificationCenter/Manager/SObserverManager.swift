//
//  SObserverManager.swift
//  SNotificationCenter
//
//  Created by Sunil Verma on 24/05/24.
//

import Foundation


protocol SObserver: AnyObject {
    func notifyUpdate()
}
final class SWeakObserver {
    weak var value: SObserver?
    init(value: SObserver) {
        self.value = value
    }
}
class SObserverManager {
    static let shared:SObserverManager = SObserverManager()
    private var observers = [SWeakObserver]()
    
    private init() {}
    
   
    func addObserver(observer:SObserver) {
        observers.append(SWeakObserver(value: observer))
    }
    
    func removeObserver(observer:SObserver) {
        observers.removeAll { item in
            return (item.value === observer || item.value == nil)
        }
    }
    func notifiOserver() {
        for observer in observers {
            observer.value?.notifyUpdate()
        }
    }
    
    func printObservers() {
        for observer in observers {
            print("Observers:  \(observer.value)")

        }
    }
}
