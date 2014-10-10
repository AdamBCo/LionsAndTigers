//
//  TopViewController.m
//  LIonsAndTigers
//
//  Created by Adam Cooper on 10/9/14.
//  Copyright (c) 2014 Adam Cooper. All rights reserved.
//

#import "TopViewController.h"
#import "HUDViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController() < HUDDelegate, UICollectionViewDelegate, UICollectionViewDataSource >
@property NSMutableArray *photosArray;
@property int buttonIndex;
@property (weak, nonatomic) IBOutlet UICollectionView *imageCollectionView;

@end

@implementation TopViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    HUDViewController *hudViewController = [[HUDViewController alloc]init];
    hudViewController.delegate = self;
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.photosArray = [NSMutableArray array];
    
}





- (IBAction)hamburgerButtonPressed:(id)sender {
    [self.delegate topRevealButtonPressed:self];
    NSLog(@"Happy Days");
}





-(void)makeBearsAppear:(id)sender{
    [self.photosArray addObject:[UIImage imageNamed:@"bear_1"]];
    [self.photosArray addObject:[UIImage imageNamed:@"bear_2"]];
    [self.photosArray addObject:[UIImage imageNamed:@"bear_3"]];
    [self.imageCollectionView reloadData];
    NSLog(@"%@",self.photosArray);
}

-(void)makeTigersAppear:(id)sender{
    self.photosArray = [NSMutableArray array];
    [self.photosArray addObject:[UIImage imageNamed:@"tiger_1"]];
    [self.photosArray addObject:[UIImage imageNamed:@"tiger_2"]];
    [self.photosArray addObject:[UIImage imageNamed:@"tiger_3"]];
    [self.imageCollectionView reloadData];
    
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