//
//  RSPTurn.h
//  RSPGame
//
//  Created by Mostafa Saleh on 6/30/18.
//  Copyright © 2018 Mostafa Saleh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) { Rock, Paper, Scissors };

@interface Turn : NSObject

@property(nonatomic) Move move;

- (instancetype)initWithMove:(Move)move;
- (BOOL)defeats:(Turn *)turn;
- (NSString *)description;

@end
