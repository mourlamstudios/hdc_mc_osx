//
//  AppDelegate.h
//  Mortgage Calculator
//
//  Created by Matthew Mourlam on 11/24/12.
//  Copyright (c) 2012 Homes.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class BuyRentController;

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    BuyRentController           *buyRent;
    NSMutableArray              *windows;
}

@property (weak) IBOutlet NSButton *aboutHomesButton;
@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSView *mainWindowView;

- (IBAction)buyRentClick:(id)sender;
- (IBAction)aboutClick:(id)sender;

@end
