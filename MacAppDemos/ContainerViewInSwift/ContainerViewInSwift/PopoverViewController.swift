//
//  PopoverViewController.swift
//  ContainerViewInSwift
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class PopoverViewController: NSViewController {

    @IBOutlet weak var content: NSTextField!
    
    let popover = NSPopover()
    
    class func loadFromNib() -> PopoverViewController {
        let vc = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "Popover") as! PopoverViewController
        vc.popover.contentViewController = vc
        return vc
    }
    func showPopover(view: NSView) {
        popover.show(relativeTo: view.bounds, of: view, preferredEdge: .maxY)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        popover.behavior = .transient
    }
    @IBAction func click(_ sender: NSButton) {
        let contentValue = content.stringValue
        NotificationCenter.default.post(name: NSNotification.Name.init(CVNotifications.Click.rawValue), object: self,userInfo: [CVNotificationsUserInfo.Content: contentValue])
        popover.performClose(sender)
    }
    
}
