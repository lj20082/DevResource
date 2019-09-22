//
//  Constants.swift
//  ContainerViewInSwift
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

import Cocoa

enum CVNotifications : String {
    case Click =  "com.muzi.Containerview.click"
    case Press = "com.muzi.Containerview.press"
    case Tap = "com.muzi.Containerview.tap"
}

enum CVNotificationsUserInfo : String{
    case Content = "content"
}
