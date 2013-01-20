//
//  BidSuitViewController.m
//  Scorer
//
//  Created by Bob Martens on 12/18/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "BidSuitViewController.h"

@interface BidSuitViewController ()

@end

@implementation BidSuitViewController

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

- (void)spadeBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage2:@"Spades":self];
}

- (void)clubBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage2:@"Clubs":self];
}

- (void)diamondBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage2:@"Diamonds":self];
}

- (void)heartBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage2:@"Hearts":self];
}

- (void)noTrumpBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage2:@"NoTrump":self];
}

@end
