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
                               [NSNumber numberWithInt:60], @"6Clubs",
                               [NSNumber numberWithInt:80], @"6Diamonds",
                               [NSNumber numberWithInt:100], @"6Hearts",
                               [NSNumber numberWithInt:120], @"6NoTrump",
                               [NSNumber numberWithInt:140], @"7Spades",
                               [NSNumber numberWithInt:160], @"7Clubs",
                               [NSNumber numberWithInt:180], @"7Diamonds",
                               [NSNumber numberWithInt:200], @"7Hearts",
                               [NSNumber numberWithInt:220], @"7NoTrump",
                               [NSNumber numberWithInt:240], @"8Spades",
                               [NSNumber numberWithInt:260], @"8Clubs",
                               [NSNumber numberWithInt:280], @"8Diamonds",
                               [NSNumber numberWithInt:300], @"8Hearts",
                               [NSNumber numberWithInt:320], @"8NoTrump",
                               [NSNumber numberWithInt:340], @"9Spades",
                               [NSNumber numberWithInt:360], @"9Clubs",
                               [NSNumber numberWithInt:380], @"9Diamonds",
                               [NSNumber numberWithInt:400], @"9Hearts",
                               [NSNumber numberWithInt:420], @"9NoTrump",
                               [NSNumber numberWithInt:440], @"10Spades",
                               [NSNumber numberWithInt:460], @"10Clubs",
                               [NSNumber numberWithInt:480], @"10Diamonds",
                               [NSNumber numberWithInt:500], @"10Hearts",
                               [NSNumber numberWithInt:520], @"10NoTrump",
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
