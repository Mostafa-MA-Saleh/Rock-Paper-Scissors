//
//  RSPGame.m
//  RSPGame
//
//  Created by Mostafa Saleh on 6/30/18.
//  Copyright © 2018 Mostafa Saleh. All rights reserved.
//

#import "Game.h"

@implementation Game

- (instancetype)initWithFirstTurn:(Turn *)firstTurn
                       secondTurn:(Turn *)secondTurn {
    self = [super init];
    if (self) {
        _firstTurn = firstTurn;
        _secondTurn = secondTurn;
    }
    return self;
}

- (Turn *)winner {
    return [_firstTurn defeats:_secondTurn] ? _firstTurn : _secondTurn;
}

- (Turn *)loser {
    return [_firstTurn defeats:_secondTurn] ? _secondTurn : _firstTurn;
}

- (NSString *)resultString {
    return [_firstTurn defeats:_secondTurn] ? @"You Win!" : @"You Lose!";
}

@end
