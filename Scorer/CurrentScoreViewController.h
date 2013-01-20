//
//  CurrentScoreViewController.h
//  Scorer
//
//  Created by Bob Martens on 12/13/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScorerGame.h"
#import "BidNumberViewController.h"
#import "BidSuitViewController.h"
#import "TricksWonViewController.h"

@interface CurrentScoreViewController : UIViewController

@property ScorerGame *currentGame;

- (IBAction)createNewHand:(id)sender;
- (void)stage1:(int)bidNumber:(id)bnvc;
- (void)stage2:(NSString *)bidSuit:(id)bsvc;
- (void)stage3:(int)tricksWon:(id)twvc;

- (void)updateScore;

@end
