//
//  LotteryEntry.h
//  lottery
//
//  Created by Christopher Martin on 8/11/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject
{
    NSDate* entryDate;
    int firstNumber;
    int secondNumber;
}

-(void)setEntryDate:(NSDate*)date;
-(NSDate*)entryDate;
-(int)firstNumber;
-(int)secondNumber;

@end
