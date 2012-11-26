//
//  BuyRentController.m
//  Mortgage Calculator
//
//  Created by Matthew Mourlam on 11/24/12.
//  Copyright (c) 2012 Homes.com. All rights reserved.
//

#import "BuyRentController.h"
#import <AVFoundation/AVFoundation.h>

@interface BuyRentController ()

@end

@implementation BuyRentController

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    //Set the bg for overlay
    CALayer *viewLayer = [CALayer layer];
    [viewLayer setBackgroundColor:CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.7)]; //RGB plus Alpha Channel
    [self.shouldBuyOverlay setWantsLayer:YES]; // view's backing store is using a Core Animation Layer
    [self.shouldBuyOverlay setLayer:viewLayer];
    
    //hide overlay
    [self.shouldBuyOverlay setHidden: YES];
    overlayOpen = NO;
    
    }

- (IBAction)calculateClick:(id)sender {
    NSLog(@"BuyRentController :: calculateClick");
    
    [self.shouldBuyOverlay setHidden: NO];
    
    //fade in
    [self animFadeIn];
}

-(void) animFadeIn
{
    CABasicAnimation *fadeInAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fadeInAnimation.fromValue = [NSNumber numberWithFloat:0.0];
    fadeInAnimation.toValue = [NSNumber numberWithFloat:1.0];
    fadeInAnimation.additive = NO;
    //fadeInAnimation.removedOnCompletion = YES;
    fadeInAnimation.duration = 0.3;
    fadeInAnimation.fillMode = kCAFillModeForwards;
    [self.shouldBuyOverlay.layer addAnimation:fadeInAnimation forKey:nil];
    
    overlayOpen = YES;
}

-(void) animFadeOut
{
    [self.shouldBuyOverlay setHidden: YES];
    overlayOpen = NO;
}

-(void)mouseDown:(NSEvent *)theEvent
{
    NSLog(@"mouseDown");
    
    //Fade out overlay if it's open
    if(overlayOpen)
        [self animFadeOut];
}

@end
