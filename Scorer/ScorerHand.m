//
//  ScorerHand.m
//  Scorer
//
//  Created by Bob Martens on 12/6/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "ScorerHand.h"

@implementation ScorerHand

@synthesize bidWon, numberOfBid, suitOfBid, tricksWon;

- (int)usScore
{
    if (bidWon) {
        return [self scoreBidWon];
    } else {
        return [self scoreBidLost];
    }
}

- (int)themScore
{
    if (! bidWon) {
        return [self scoreBidWon];
    } else {
        return [self scoreBidLost];
    }
}

- (int)scoreBidWon
{
    NSDictionary *bidScores = [NSDictionary dictionaryWithObjectsAndKeys:
                               [NSNumber numberWithInt:40], @"6Spades",
                               nil];
    
    int scoreSign;
    if (tricksWon >= numberOfBid) {
        scoreSign = 1;
    } else {
        scoreSign = -1;
    }
    
    NSString *bidKey = [NSString stringWithFormat:@"%d%@", numberOfBid, suitOfBid];
    
    NSNumber *absScoreObject = [bidScores objectForKey:bidKey];
    int absScore = [absScoreObject integerValue];

    return absScore * scoreSign;
}

- (int)scoreBidLost
{
    return (10 - tricksWon) * 10;
}

@end
