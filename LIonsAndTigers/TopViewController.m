//
//  TopViewController.m
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController() <UICollectionViewDelegate, UICollectionViewDataSource >
@property NSMutableArray *photosArray;
@property int buttonIndex;
@property (weak, nonatomic) IBOutlet UICollectionView *imageCollectionView;
@property HUDViewController *hudViewController;

@end

@implementation TopViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.photosArray = [NSMutableArray array];
    self.hudViewController = [[HUDViewController alloc] init];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}

- (IBAction)hamburgerButtonPressed:(id)sender {
    [self.delegate topRevealButtonPressed:self];
    NSLog(@"Happy Days");
}


-(void)makeBearsAppear{
    self.photosArray = [NSMutableArray array];
    [self.photosArray addObject:[UIImage imageNamed:@"bear_1"]];
    [self.photosArray addObject:[UIImage imageNamed:@"bear_2"]];
    [self.photosArray addObject:[UIImage imageNamed:@"bear_3"]];
    [self.imageCollectionView reloadData];
    
    [self.delegate topRevealButtonPressed:self];
}

-(void)makeTigersAppear{
    self.photosArray = [NSMutableArray array];
    [self.photosArray addObject:[UIImage imageNamed:@"tiger_1"]];
    [self.photosArray addObject:[UIImage imageNamed:@"tiger_2"]];
    [self.photosArray addObject:[UIImage imageNamed:@"tiger_3"]];
    [self.imageCollectionView reloadData];
    
    [self.delegate topRevealButtonPressed:self];
    
}

-(void)makeLionsAppear{
    self.photosArray = [NSMutableArray array];
    [self.photosArray addObject:[UIImage imageNamed:@"lion_1"]];
    [self.photosArray addObject:[UIImage imageNamed:@"lion_2"]];
    [self.photosArray addObject:[UIImage imageNamed:@"lion_3"]];
    [self.imageCollectionView reloadData];
    
    [self.delegate topRevealButtonPressed:self];
    
}





-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.photosArray.count;
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.photosArray objectAtIndex:indexPath.row];
    return cell;
}

@end