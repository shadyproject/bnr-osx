//
//  main.m
//  lottery
//
//  Created by Christopher Martin on 8/11/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate* now = [[NSDate alloc] init];
        NSCalendar* cal = [NSCalendar currentCalendar];
        
        NSDateComponents* weekComponents = [[NSDateComponents alloc] init];
        
        srandom((unsigned)time(NULL));
        
        NSMutableArray* array = [[NSMutableArray alloc] init];
        
        for (int i=0; i < 10; i+=1) {
            [weekComponents setWeek:i];
            
            NSDate* weeksFromNow = [cal dateByAddingComponents:weekComponents toDate:now options:0];
            
            LotteryEntry* entry = [[LotteryEntry alloc] init];
            [entry prepareRandomNumbers];
            [entry setEntryDate:weeksFromNow];
            
            [array addObject:entry];
        }
        
        for (LotteryEntry* printMe in array) {
            NSLog(@"%@", printMe);
        }
        
        
    }
    return 0;
}

