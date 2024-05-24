//
//  SNotificationManager.swift
//  SNotificationCenter
//
//  Created by Sunil Verma on 24/05/24.
//

import Foundation


struct SNotificationManager {
    enum SNotificationType: String {
        case localDidChanged
        case jwtTokenExpired

        fileprivate var name: NSNotification.Name? {
            return NSNotification.Name(self.rawValue)
        }
    }
    
  static func addObserver(observer:Any, type:SNotificationType, selector:Selector, object: Any? = nil) {
      NotificationCenter.default.removeObserver(observer, name: type.name, object: nil)
      NotificationCenter.default.addObserver(observer, selector: selector, name: type.name, object: object)
    }
    
    static func postObserver(type:SNotificationType, object: Any? = nil) {
        NotificationCenter.default.post(name: type.name!, object: object)
    }
    
    static func removeObserver(observer:Any, type:SNotificationType, object: Any? = nil) {
        NotificationCenter.default.removeObserver(observer, name: type.name, object: nil)
      }
    
}
