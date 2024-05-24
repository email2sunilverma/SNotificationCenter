# SNotificationCenter
Project provides basic idea and approach to implement the NotificationCenter by using Pubs/Subs Pattern, and Observer design pattern, this pattern oppose to create strong reference cycle because of weak reference of protocol.

# HOW TO Use
* Drag and drop the file **SNotificationManager** in your project
* Susbscribe the Observer By: **SNotificationManager.addObserver(observer: self, type: .jwtTokenExpired, selector: #selector(tokenExpired(noti:)))**
* Publish the Observer By: **SNotificationManager.postObserver(type: .jwtTokenExpired, object: true)**
* Receive the Observers By: **'
  @objc fileprivate func tokenExpired(noti: NSNotification) {
        if let expired = noti.object as? Bool {
            print(" expired: \(expired)")
        }
    }'**

# Observer Design Paterns
* Add Observers By: **SObserverManager.shared.addObserver(observer: self)**
* Connfirm the protocol By:  **'
  extension ViewController :SObserver {
    func notifyUpdate() {
        print("Observers notified")
    }    
}'**

* Remove Observer By: **'
    deinit {
        SObserverManager.shared.removeObserver(observer: self)
    }'**
# Author   

* [Sunil Verma](https://github.com/email2sunilverma)
* [Web](https://sites.google.com/view/sunil-kumar-verma/)


# License
SNotificationCenter is available under the MIT license. See the LICENSE file for more info.


## Other Libraries

* [SPopupMenu](https://github.com/email2sunilverma/SPopupMenu):- Simple UI for create the POP list for menu with Text, Text With Icon, Muliti Seelction.
