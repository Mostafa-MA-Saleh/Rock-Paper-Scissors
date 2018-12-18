//
//  RSPController.m
//  RSPGame
//
//  Created by Mostafa Saleh on 7/1/18.
//  Copyright © 2018 Mostafa Saleh. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (void)throwDown:(Move)playersMove {
    Turn *playersTurn = [[Turn alloc] initWithMove:playersMove];
    Turn *comutersTurn = [[Turn alloc] init];

    self.game =
        [[Game alloc] initWithFirstTurn:playersTurn secondTurn:comutersTurn];
}

- (NSString *)messageForGame:(Game *)game {
    NSString *winner = [[game winner] description];
    NSString *loser = [[game loser] description];
    NSString *result = [game resultString];
    if ([winner isEqualToString:loser]) {
        return @"It's a tie";
    } else {
        return [NSString
            stringWithFormat:@"%@ defeats %@. %@", winner, loser, result];
    }
}

- (void)measure:(void (^)(void))block {
    long startTime = [[NSDate date] timeIntervalSince1970] * 1000;
    [block invoke];
    long endTime = [[NSDate date] timeIntervalSince1970] * 1000;
    NSLog(@"Ran for = %lims", endTime - startTime);
}

@end
