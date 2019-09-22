//
//  SidebarViewController.swift
//  ContainerViewInSwift
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class SidebarViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func click(_ sender: NSButton) {
        let popover = PopoverViewController.loadFromNib()
        popover.showPopover(view: sender)
    }
    
}
