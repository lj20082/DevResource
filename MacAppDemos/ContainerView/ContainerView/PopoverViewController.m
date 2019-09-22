//
//  PopoverViewController.m
//  ContainerView
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

#import "PopoverViewController.h"

@interface PopoverViewController ()
@property (strong) NSPopover *popover;
@end

@implementation PopoverViewController

+ (PopoverViewController *)loadFromNib {
    PopoverViewController *vc = (PopoverViewController *)[[NSStoryboard storyboardWithName:@"Main" bundle:nil] instantiateControllerWithIdentifier:NSStringFromClass(self.class)];
    vc.popover = [[NSPopover alloc] init];
    vc.popover.contentViewController = vc;
    return vc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.popover.behavior = NSPopoverBehaviorTransient;
}

- (void)showPopover:(NSView *)view {
    [self.popover showRelativeToRect:view.bounds ofView:view preferredEdge:NSRectEdgeMaxY];
}

- (IBAction)buttonClicked:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SidebarVCButtonClickNotification" object:self];
    [self.popover performClose:sender];
}

@end
