# SNotificationCenter
Project provides basic idea and approach to implement the NotificationCenter by using Pubs/Subs Pattern.

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


# Author   

* [Sunil Verma](https://github.com/email2sunilverma)
* [Web](https://sites.google.com/view/sunil-kumar-verma/)


# License
SNotificationCenter is available under the MIT license. See the LICENSE file for more info.


## Other Libraries

* [SPopupMenu](https://github.com/email2sunilverma/SPopupMenu):- Simple UI for create the POP list for menu with Text, Text With Icon, Muliti Seelction.
