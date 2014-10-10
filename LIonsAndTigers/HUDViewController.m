//
//  HUDViewController.m
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "HUDViewController.h"

@implementation HUDViewController

- (IBAction)lionsButtonPressed:(id)sender {
    [self.delegate makeBearsAppear:self];
}

- (IBAction)tigersButtonPressed:(id)sender {
    NSLog(@"Help");
    [self.delegate makeTigersAppear:self];
}

@end
