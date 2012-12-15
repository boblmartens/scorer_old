//
//  LaunchViewController.m
//  Scorer
//
//  Created by Bob Martens on 12/5/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "LaunchViewController.h"

@interface LaunchViewController ()

@end

@implementation LaunchViewController

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

- (IBAction)startNewGame:(id)sender
{
    CurrentScoreViewController *newGameScore = [[CurrentScoreViewController alloc] init];
    [newGameScore setCurrentGame:[[ScorerGame alloc] init]];
    
    [self presentViewController:newGameScore animated:YES completion:NULL];
}

@end
