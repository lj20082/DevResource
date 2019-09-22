//
//  PopoverViewController.h
//  ContainerView
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopoverViewController : NSViewController
+ (PopoverViewController *)loadFromNib;
- (void)showPopover:(NSView *)view;
@end

NS_ASSUME_NONNULL_END
