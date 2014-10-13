//
//  TopViewController.h
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUDViewController.h"

@protocol TopDelegate

-(IBAction)topRevealButtonPressed;

@end

@interface TopViewController : UIViewController

@property id<TopDelegate> delegate;

- (void)makeBearsAppear;
- (void)makeTigersAppear;
- (void)makeLionsAppear;

@end


