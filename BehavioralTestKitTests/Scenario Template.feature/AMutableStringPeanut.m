//
//  AMutableStringPeanut.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/18/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BehavioralTestKit.h"



@interface AMutableStringPeanut : BTGiven
@end



@implementation AMutableStringPeanut



- (void)setUp
{
    [[self delegate] setValue:[NSMutableString stringWithString:@"Peanut"] forKey:@"theString"];
}



@end
