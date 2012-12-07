//
//  ScorerHand.h
//  Scorer
//
//  Created by Bob Martens on 12/6/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScorerHand : NSObject

@property (nonatomic) BOOL bidWon;
@property (nonatomic) int numberOfBid;
@property (nonatomic, strong) NSString *suitOfBid;
@property (nonatomic) int tricksWon;

- (int)usScore;
- (int)themScore;

- (int)scoreBidWon;
- (int)scoreBidLost;

@end
