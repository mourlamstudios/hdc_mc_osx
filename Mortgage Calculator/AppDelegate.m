//
//  AppDelegate.m
//  Mortgage Calculator
//
//  Created by Matthew Mourlam on 11/24/12.
//  Copyright (c) 2012 Homes.com. All rights reserved.
//

#import "AppDelegate.h"
#import "BuyRentController.h"
#import "WebViewVC.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
    //create our windows array
    windows = [[NSMutableArray alloc]init];
}

- (IBAction)buyRentClick:(id)sender
{
    NSLog(@"buyRentClick");
    
    //create new buy rent windows
    BuyRentController *buyRentWin = [[BuyRentController alloc] initWithWindowNibName:@"BuyRentController"];
    
    //add it to mutable, otherwise window will close b/c of arc
    [windows addObject: buyRentWin];
    [buyRentWin showWindow: self];
}

//Open hdc in browswer
- (IBAction)aboutClick:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"http://www.homes.com/"];
    if( ![[NSWorkspace sharedWorkspace] openURL:url] )
        NSLog(@"Failed to open Homes.com in a web browser.");
}
@end
