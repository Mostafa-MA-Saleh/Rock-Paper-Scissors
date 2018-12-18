//
//  RSPController.h
//  RSPGame
//
//  Created by Mostafa Saleh on 7/1/18.
//  Copyright © 2018 Mostafa Saleh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Turn.h"
#import "Game.h"

@interface Controller : NSObject

@property Game *game;

- (void)throwDown:(Move)playersMove;
- (NSString *)messageForGame:(Game *)game;
- (void)measure:(void (^)(void))block;

@end
