//
//  SidebarViewController.m
//  ContainerView
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

#import "SidebarViewController.h"
#import "PopoverViewController.h"

@interface SidebarViewController ()

@end

@implementation SidebarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
- (IBAction)clickAction:(id)sender {
    PopoverViewController *vc = [PopoverViewController loadFromNib];
    [vc showPopover:sender];
}

@end
