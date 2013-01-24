//
//  BidWinnerViewController.m
//  Scorer
//
//  Created by Bob Martens on 1/23/13.
//  Copyright (c) 2013 Deck78. All rights reserved.
//

#import "BidWinnerViewController.h"
#import "ScorerGame.h"
#import "CurrentScoreViewController.h"

@interface BidWinnerViewController ()

@end

@implementation BidWinnerViewController

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

- (IBAction)usWinBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage0:YES:self];
}

- (IBAction)themWinBid:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage0:NO:self];
}

@end
