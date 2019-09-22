//
//  FirstTabViewController.swift
//  WindowController
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class FirstTabViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func dismissTabView(_ sender: NSButton) {
        dismiss(parent!)
    }
}
