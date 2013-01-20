//
//  CurrentScoreViewController.m
//  Scorer
//
//  Created by Bob Martens on 12/13/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "CurrentScoreViewController.h"

@interface CurrentScoreViewController ()

@end

@implementation CurrentScoreViewController

@synthesize currentGame;

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
    NSLog(@"%@", [self currentGame]);
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createNewHand:(id)sender
{
    [currentGame createNewHand];
    
    [self presentViewController:[[BidNumberViewController alloc] init] animated:YES completion:nil];
    NSLog(@"CurrentScoreViewController");
}


- (void)stage1:(int)bidNumber:(id)bnvc
{
    [currentGame setBidNumber:bidNumber];
    [bnvc dismissViewControllerAnimated:NO completion:nil];
    
    [self presentViewController:[[BidSuitViewController alloc] init] animated:NO completion:nil];
}

- (void)stage2:(NSString *)bidSuit:(id)bsvc
{
    [currentGame setBidSuit:bidSuit];
    [bsvc dismissViewControllerAnimated:NO completion:nil];
    
    [self presentViewController:[[TricksWonViewController alloc] init] animated:NO completion:nil];
}

- (void)stage3:(int)tricksWon:(id)twvc
{
    [currentGame setTricksWon:tricksWon];
    [twvc dismissViewControllerAnimated:YES completion:nil];
    
    [self updateScore];
}

- (void)updateScore
{
    NSLog(@"%d", [currentGame totalThemScore]);
}

@end
