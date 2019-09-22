//
//  ImageCollectionViewItem.swift
//  CollectionViewDemo
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class ImageCollectionViewItem: NSCollectionViewItem {

    override var isSelected: Bool {
        didSet {
            super.isSelected = isSelected
            updateColor()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.red.cgColor
    }
    
    func updateColor() {
        if isSelected {
            switch highlightState {
            case .none, .forDeselection:
                view.layer?.backgroundColor = NSColor.red.cgColor
            case .forSelection:
                view.layer?.backgroundColor = NSColor.green.cgColor
            default: break
            }
        }
    }
}
