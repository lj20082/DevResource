//
//  ViewController.swift
//  Binding
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @objc dynamic var users: [User] = []
    var currentUser: User?
    
    @IBOutlet weak var tableview: NSTableView!
//    @IBOutlet weak var firstNameField: NSTextField!
//    @IBOutlet weak var lastNameField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func updateUser(_ sender: NSButton) {
//        currentUser?.firstName = firstNameField.stringValue
//        currentUser?.lastName = lastNameField.stringValue
    }
}

extension ViewController: NSTableViewDelegate {
    func tableViewSelectionDidChange(_ notification: Notification) {
        print(tableview.selectedRow)
        let user = users[tableview.selectedRow]
        currentUser = user
//        firstNameField.stringValue = user.firstName
//        lastNameField.stringValue = user.lastName
    }
}
