//
//  LaunchViewController.h
//  Scorer
//
//  Created by Bob Martens on 12/5/12.
//  Copyright (c) 2012 Deck78. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScorerGame.h"

@interface LaunchViewController : UIViewController

@property ScorerGame *currentGame;

- (IBAction)startNewGame:(id)sender;

@end
