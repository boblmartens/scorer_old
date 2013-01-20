//
//  BidSuitViewController.h
//  Scorer
//
//  Created by Bob Martens on 12/18/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CurrentScoreViewController.h"

@interface BidSuitViewController : UIViewController

- (IBAction)spadeBid:(id)sender;
- (IBAction)clubBid:(id)sender;
- (IBAction)diamondBid:(id)sender;
- (IBAction)heartBid:(id)sender;
- (IBAction)noTrumpBid:(id)sender;

- (void)suitDone;

@end
