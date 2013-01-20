//
//  BidNumberViewController.m
//  Scorer
//
//  Created by Bob Martens on 12/18/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "BidNumberViewController.h"

@interface BidNumberViewController ()

@end

@implementation BidNumberViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sixBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage1:6:self];
}

- (void)sevenBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage1:7:self];

}

- (void)eightBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage1:8:self];
}

- (void)nineBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage1:9:self];
}

- (void)tenBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage1:10:self];
}

@end
