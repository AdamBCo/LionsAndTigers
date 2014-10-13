//
//  ViewController.m
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "ViewController.h"
#import "HUDViewController.h"


@interface ViewController () <HUDDelegate, TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftAndRightConstraints;
@property NSMutableArray *photosArray;
@property int buttonIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)makeBearsAppear{
    [self.topViewController makeBearsAppear];
}

-(void)makeTigersAppear{
    [self.topViewController makeTigersAppear];
}

-(void)makeLionsAppear{
    [self.topViewController makeLionsAppear];
}

-(void)topRevealButtonPressed{
    //User constraints to move the topViewController Back and Forth.
    if (self.buttonIndex == 0) {
        self.leftAndRightConstraints.constant +=300;
        self.buttonIndex = 1;
    } else if (self.buttonIndex == 1){
        self.leftAndRightConstraints.constant -=300;
        self.buttonIndex = 0;
    }
    
    //Animate the sidebar
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    //Perform the appropriate segue based on the Segue Identifier.
    if ([segue.identifier isEqualToString:@"NavigationSegue"])
    {
        UINavigationController *navController = segue.destinationViewController;
        self.topViewController = [navController.childViewControllers objectAtIndex:0];
        self.topViewController.delegate = self;
    }
    else if ([segue.identifier isEqualToString:@"HUDSegue"])
    {
        HUDViewController *hudViewController = segue.destinationViewController;
        hudViewController.delegate = self;
    }
}






@end
