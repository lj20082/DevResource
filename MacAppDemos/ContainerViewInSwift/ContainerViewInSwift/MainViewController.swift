//
//  MainViewController.swift
//  ContainerViewInSwift
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    @IBOutlet weak var content: NSTextField!
    private var numberOfClicks = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        NotificationCenter.default.addObserver(self, selector:#selector(MainViewController.display(notification:)) , name: NSNotification.Name.init(CVNotifications.Click.rawValue), object: nil)
    }
    
    @objc func display(notification: NSNotification) {
        if let contentValue = notification.userInfo?[CVNotificationsUserInfo.Content] as? String , contentValue != "" {
            content.stringValue = contentValue
        } else {
            numberOfClicks += 1
            content.stringValue = "Click \(numberOfClicks) times"
        }
    }
}
