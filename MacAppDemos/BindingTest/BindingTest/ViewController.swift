//
//  ViewController.swift
//  BindingTest
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @objc dynamic var users: [User] = []
    @objc dynamic var currentUser: User?
    @IBOutlet weak var tableview: NSTableView!
    @IBOutlet weak var firstNameTextField: NSTextField!
    @IBOutlet weak var lastNameTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func updateAction(_ sender: NSButton) {
        
    }
    
}

extension ViewController: NSTableViewDelegate {
    func tableViewSelectionDidChange(_ notification: Notification) {
        let user = users[tableview.selectedRow]
        currentUser = user
        firstNameTextField.stringValue = user.firstName
        lastNameTextField.stringValue = user.lastName
    }
}
