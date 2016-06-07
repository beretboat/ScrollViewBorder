//
//  AppDelegate.m
//  ScrollViewBorder
//
//  Created by Rick on 6/7/16.
//  Copyright © 2016 example. All rights reserved.
//

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface AppDelegate () {
    __weak IBOutlet NSScrollView *scrollView;
    __weak IBOutlet NSScrollView *scrollViewWithTable;
}

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)awakeFromNib {
    scrollView.wantsLayer = TRUE;
    scrollView.layer.cornerRadius=10.0f;
    scrollView.layer.masksToBounds=YES;
    scrollView.layer.borderColor=[[NSColor redColor]CGColor];
    scrollView.layer.borderWidth= 1.0f;
    
    scrollViewWithTable.wantsLayer = TRUE;
    scrollViewWithTable.layer.cornerRadius=10.0f;
    scrollViewWithTable.layer.masksToBounds=YES;
    scrollViewWithTable.layer.borderColor=[[NSColor redColor]CGColor];
    scrollViewWithTable.layer.borderWidth= 1.0f;
}

@end
