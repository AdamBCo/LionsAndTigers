//
//  HUDViewController.h
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"

@protocol HUDDelegate

@end

@interface HUDViewController : UIViewController

- (IBAction)lionsButtonPressed:(id)sender;
- (IBAction)tigersButtonPressed:(id)sender;

@property id<HUDDelegate> delegate;

@end
