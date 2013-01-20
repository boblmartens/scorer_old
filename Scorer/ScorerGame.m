//
//  ScorerGame.m
//  Scorer
//
//  Created by Bob Martens on 12/6/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import "ScorerGame.h"

@implementation ScorerGame

@synthesize gameHands;
@synthesize currentHand;

- (void)createNewHand
{
    [self setCurrentHand:[[ScorerHand alloc] init]];
}

- (void)setBidWon:(BOOL)team
{
    [currentHand setBidWon:team];
}

- (void)setBidNumber:(int)number
{
    [currentHand setNumberOfBid:number];
}

- (void)setBidSuit:(NSString *)suit
{
    [currentHand setSuitOfBid:suit];
}

- (void)setTricksWon:(int)tricks;
{
    [currentHand setTricksWon:tricks];
    
    if (! [self gameHands]) {
        [self setGameHands:[[NSMutableArray alloc] init]];
        [[self gameHands] addObject:currentHand];
    } else {
        [[self gameHands] addObject:currentHand];
    }
    
    [self setCurrentHand:NULL];
}

- (int)totalUsScore
{
    if (! [self gameHands]) {
        return 0;
    } else {
        int totalScore = 0;
        
        for (ScorerHand *hand in gameHands) {
            totalScore = totalScore + [hand usScore];
        }
        
        return totalScore;
    }
}

- (int)totalThemScore
{
    if (! [self gameHands]) {
        return 0;
    } else {
        int totalScore = 0;
        
        for (ScorerHand *hand in gameHands) {
            totalScore = totalScore + [hand themScore];
        }
        
        return totalScore;
    }
}

@end
