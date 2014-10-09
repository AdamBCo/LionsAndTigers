//
//  TopViewController.m
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "TopViewController.h"

@implementation TopViewController

- (IBAction)hamburgerButtonPressed:(id)sender {
    [self.delegate topRevealButtonPressed:self];
    
    
}

@end