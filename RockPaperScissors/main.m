//
//  main.m
//  RSPGame
//
//  Created by Mostafa Saleh on 6/30/18.
//  Copyright © 2018 Mostafa Saleh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Controller.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        Controller *controller = [[Controller alloc] init];
        [controller measure:^{
            NSMutableArray *array = [[NSMutableArray alloc]init];
            for (int i = 0; i < 1000; i++) {
                [array addObject:[NSNumber numberWithInteger:i]];
            }
            [array sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
                return [obj1 doubleValue] < [obj2 doubleValue];
            }];
            NSMutableString *string = [[NSMutableString alloc]init];
            for (NSNumber* number in array) {
                NSString *itemString = [NSString stringWithFormat:@"%i, ", (int) [number integerValue]];
                [string appendString:itemString];
            }
            NSLog(@"%@", string);
        }];
        [controller throwDown:Rock];
        NSString *result = [controller messageForGame:controller.game];
        NSLog(@"%@", result);
    }
    return 0;
}
