//
//  MuziWindowController.swift
//  WindowController
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class MuziWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        window?.titleVisibility = .hidden
        window?.titlebarAppearsTransparent = true
    }
    @IBAction func settingAction(_ sender: NSToolbarItem) {
        print("setting")
    }
    
}
