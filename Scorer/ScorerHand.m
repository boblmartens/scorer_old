//
//  ScorerHand.m
//  Scorer
//
//  Created by Bob Martens on 12/6/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "ScorerHand.h"

static NSDictionary *bidScores = nil;

@implementation ScorerHand

@synthesize bidWon, numberOfBid, suitOfBid, tricksWon;

//+ (void)initialize
//{
//    if (! bidScores) {
//        bidScores = [NSDictionary dictionaryWithObjectsAndKeys:
//                     @"6Spades", 40,
//                     @"6Clubs", 60,
//                     @"6Diamonds", 80,
//                     @"6Hearts", 100,
//                     @"6NoTrump", 120,
//                     @"7Spades", 140,
//                     @"7Clubs", 160,
//                     @"7Diamonds", 180,
//                     @"7Hearts", 200,
//                     @"7NoTrump", 220,
//                     @"8Spades", 240,
//                     @"8Clubs", 260,
//                     @"8Diamonds", 280,
//                     @"8Hearts", 300,
//                     @"8NoTrump", 320,
//                     @"9Spades", 340,
//                     @"9Clubs", 360,
//                     @"9Diamonds", 380,
//                     @"9Hearts", 400,
//                     @"9NoTrump", 420,
//                     @"10Spades", 440,
//                     @"10Clubs", 460,
//                     @"10Diamonds", 480,
//                     @"10Hearts", 500,
//                     @"10NoTrump", 520,
//                     nil];
//    }
//}

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
