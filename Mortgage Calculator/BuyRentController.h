//
//  BuyRentController.h
//  Mortgage Calculator
//
//  Created by Matthew Mourlam on 11/24/12.
//  Copyright (c) 2012 Homes.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BuyRentController : NSWindowController
{
    BOOL            overlayOpen;
}

@property (weak) IBOutlet NSScrollView *scrollView;
@property (weak) IBOutlet NSView *shouldBuyOverlay;

-(IBAction) calculateClick:(id)sender;
-(void) animFadeIn;
-(void) animFadeOut;

@end
