//
//  RSPTurn.m
//  RSPGame
//
//  Created by Mostafa Saleh on 6/30/18.
//  Copyright © 2018 Mostafa Saleh. All rights reserved.
//

#import "Turn.h"

@implementation Turn

- (instancetype)initWithMove:(Move)move {
    self = [super init];
    if (self) {
        _move = move;
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _move = [self generateMove];
    }
    return self;
}

- (Move)generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    switch (randomNumber) {
    case 0:
        return Rock;
    case 1:
        return Paper;
    default:
        return Scissors;
    }
}

- (BOOL)defeats:(Turn *)opponentsTurn {
    return (_move == Paper && opponentsTurn.move == Rock) ||
           (_move == Scissors && opponentsTurn.move == Paper) ||
           (_move == Rock && opponentsTurn.move == Scissors);
}

- (NSString *)description {
    switch (_move) {
    case Rock:
        return @"Rock";
    case Paper:
        return @"Paper";
    case Scissors:
        return @"Scissors";
    }
}

@end
