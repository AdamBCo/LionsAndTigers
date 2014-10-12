//
//  HUDViewController.h
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "TopViewController.h"

@protocol HUDDelegate

- (void)makeBearsAppear;
- (void)makeTigersAppear;
- (void)makeLionsAppear;

@end

@interface HUDViewController : UIViewController

@property id<HUDDelegate> delegate;

@end
