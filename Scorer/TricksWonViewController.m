//
//  TricksWonViewController.m
//  Scorer
//
//  Created by Bob Martens on 12/18/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "TricksWonViewController.h"

@interface TricksWonViewController ()

@end

@implementation TricksWonViewController

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

- (IBAction)zeroTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:0:self];
}

- (IBAction)oneTrick:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:1:self];
}

- (IBAction)twoTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:2:self];
}

- (IBAction)threeTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:3:self];
}

- (IBAction)fourTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:4:self];
}

- (IBAction)fiveTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:5:self];
}

- (IBAction)sixTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:6:self];
}

- (IBAction)sevenTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:7:self];
}

- (IBAction)eightTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:8:self];
}

- (IBAction)nineTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:9:self];
}
- (IBAction)tenTricks:(id)sender
{
    CurrentScoreViewController *csvc = (CurrentScoreViewController *)[self presentingViewController];
    [csvc stage3:10:self];
}


@end
