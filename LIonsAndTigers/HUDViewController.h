//
//  HUDViewController.h
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"

@protocol HUDDelegate

- (IBAction)makeBearsAppear:(id)sender;
- (IBAction)makeTigersAppear:(id)sender;

@end

@interface HUDViewController : UIViewController

@property id<HUDDelegate> delegate;

@end
