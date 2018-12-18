//
//  RSPGame.h
//  RSPGame
//
//  Created by Mostafa Saleh on 6/30/18.
//  Copyright © 2018 Mostafa Saleh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Turn.h"

@interface Game : NSObject

@property(nonatomic) Turn *firstTurn;
@property(nonatomic) Turn *secondTurn;

- (instancetype)initWithFirstTurn:(Turn *)firstTurn
                       secondTurn:(Turn *)secondTurn;
- (Turn *)winner;
- (Turn *)loser;
- (NSString *)resultString;

@end
