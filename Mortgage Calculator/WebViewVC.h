//
//  WebViewController.h
//  Mortgage Calculator
//
//  Created by Matthew Mourlam on 11/24/12.
//  Copyright (c) 2012 Homes.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface WebViewVC : NSViewController


@property (weak) IBOutlet WebView *webView;
@property (weak) IBOutlet NSProgressIndicator *activity;

@end
