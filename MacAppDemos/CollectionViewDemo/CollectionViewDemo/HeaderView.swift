//
//  HeaderView.swift
//  CollectionViewDemo
//
//  Created by 李建忠 on 2019/9/23.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class HeaderView: NSView {

    lazy var titleField: NSTextField? = {
        for view in self.subviews {
            if view is NSTextField {
                return view as? NSTextField
            }
        }
        return nil
    }()
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.green.cgColor
    }
    
}
