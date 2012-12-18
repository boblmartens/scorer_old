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

@interface CurrentScoreViewController : UIViewController

@property ScorerGame *currentGame;

- (IBAction)createNewHand:(id)sender;

@end
