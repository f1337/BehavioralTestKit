//
//  StringIsAppendedWithButter.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/18/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BehavioralTestKit.h"



@interface StringIsAppendedWithButter : BTWhen
@end



@implementation StringIsAppendedWithButter



- (void)occur
{
    NSMutableString *theString = [[self delegate] valueForKey:@"theString"];
    [theString appendString:@" Butter"];
}



@end

