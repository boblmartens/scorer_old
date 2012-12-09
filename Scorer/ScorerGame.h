//
//  ScorerGame.h
//  Scorer
//
//  Created by Bob Martens on 12/6/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScorerHand.h"

@interface ScorerGame : NSObject

@property (nonatomic, strong) NSMutableArray *gameHands;
@property (nonatomic, strong) ScorerHand *currentHand;

- (void)createNewHand;

- (void)setBidWinner;
- (void)setBidNumber;
- (void)setBidSuit;
- (void)setTricksWon;

- (int)usScore;
- (int)themScore;

@end
