//
//  RootModel.swift
//  HelloOutlineView
//
//  Created by 李建忠 on 2019/9/25.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

class RootModel: NSObject {
    var name = ""
    var isLeaf = false
    var children = [LeafModel]()
}
