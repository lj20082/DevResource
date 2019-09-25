//
//  ViewController.swift
//  HelloOutlineView
//
//  Created by 李建忠 on 2019/9/25.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var outlineView: NSOutlineView!
    
    var rootArray = [RootModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDataModel()
        outlineView.reloadData()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

extension ViewController {
    fileprivate func setupDataModel() {
        let leaf1 = LeafModel("Objective-c")
        let leaf2 = LeafModel("Swift")
        let leaf3 = LeafModel("Java")
        let leaf4 = LeafModel("Python")
        let root1 = RootModel()
        root1.name = "language"
        root1.children = [leaf1,leaf2,leaf3,leaf4]
        
        let leaf5 = LeafModel("beijing")
        let leaf6 = LeafModel("guangdong")
        let leaf7 = LeafModel("Shanghai")
        let leaf8 = LeafModel("shenzhen")
        let root2 = RootModel()
        root2.name = "city"
        root2.children = [leaf5,leaf6,leaf7,leaf8]
        
        rootArray = [root1,root2]
    }
}

extension ViewController: NSOutlineViewDataSource {
    func outlineView(_ outlineView: NSOutlineView, numberOfChildrenOfItem item: Any?) -> Int {
        if let item = item as? RootModel {
            return item.children.count
        }
        return rootArray.count
    }
    func outlineView(_ outlineView: NSOutlineView, isItemExpandable item: Any) -> Bool {
        return item is RootModel
    }
    func outlineView(_ outlineView: NSOutlineView, child index: Int, ofItem item: Any?) -> Any {
        if let item = item as? RootModel {
            return item.children[index]
        }
        return rootArray[index]
    }
}

extension ViewController: NSOutlineViewDelegate {
    func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView? {
        var cell: NSTableCellView?
        if item is RootModel {
            cell = outlineView.makeView(withIdentifier: NSUserInterfaceItemIdentifier.init("HeaderCell"), owner: self) as? NSTableCellView
            cell?.textField?.stringValue = (item as? RootModel)?.name ?? ""
        }else {
            cell = outlineView.makeView(withIdentifier: NSUserInterfaceItemIdentifier.init("DataCell"), owner: self) as? NSTableCellView
            cell?.textField?.stringValue = (item as? LeafModel)?.leafName ?? ""
        }
        return cell
    }
}
