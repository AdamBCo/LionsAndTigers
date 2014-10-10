//
//  ViewController.m
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftAndRightConstraints;

@property NSMutableArray *photosArray;
@property int buttonIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)topRevealButtonPressed:(id)sender{
    if (self.buttonIndex == 0) {
        self.leftAndRightConstraints.constant +=200;
        self.buttonIndex = 1;
    } else if (self.buttonIndex == 1){
        self.leftAndRightConstraints.constant -=200;
        self.buttonIndex = 0;
    }
    
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
