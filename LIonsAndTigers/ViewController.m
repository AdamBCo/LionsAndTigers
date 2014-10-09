//
//  ViewController.m
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <TopDelegate, HUDDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftAndRightConstraints;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)topRevealButtonPressed:(id)sender{
    NSLog(@"Look at Wade");
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"NavigationSegue"]){
        UINavigationController *navController = segue.destinationViewController;
        TopViewController *topViewController = [navController.childViewControllers objectAtIndex:0];
        topViewController.delegate = self;
    }
}



@end
