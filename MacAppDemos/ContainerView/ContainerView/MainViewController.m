//
//  MainViewController.m
//  ContainerView
//
//  Created by 李建忠 on 2019/9/22.
//  Copyright © 2019 李建忠. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController (){
    int i;
}
@property (weak) IBOutlet NSTextField *contentLabel;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(buttonClicked:) name:@"SidebarVCButtonClickNotification" object:nil];
}

- (void)buttonClicked:(NSNotification *)notification {
    self.contentLabel.stringValue = [NSString stringWithFormat:@"Click %d times",++i];
}

@end
