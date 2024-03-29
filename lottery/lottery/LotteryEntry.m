//
//  LotteryEntry.m
//  lottery
//
//  Created by Christopher Martin on 8/11/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

-(id)initWithEntryDate:(NSDate *)aDate{
    self = [super init];
    
    if (self) {
        entryDate = aDate;
        firstNumber = ((int)random() % 100)+1;
        secondNumber = ((int)random() % 100)+1;
    }
    
    return self;
}

-(id)init{
    return [self initWithEntryDate:[NSDate date]];
}

-(void)setEntryDate:(NSDate *)date{
    entryDate = date;
}

-(NSDate*)entryDate{
    return entryDate;
}

-(int)firstNumber{
    return firstNumber;
}

-(int)secondNumber{
    return secondNumber;
}

#pragma mark -
#pragma mark Overrides
-(NSString*)description{
    NSDateFormatter* fmt = [[NSDateFormatter alloc] init];
    [fmt setDateStyle:NSDateFormatterShortStyle];
    return [NSString stringWithFormat:@"Entry for %@: %d %d",
            [fmt stringFromDate:[self entryDate]], [self firstNumber], [self secondNumber]];
}
@end
