//
//  WebViewController.h
//  MedicationTracker
//
//  Created by Dare Ryan on 1/10/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)doneButtonPressed:(id)sender;

@end
