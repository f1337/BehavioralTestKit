//
//  TheStringIsApple.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/19/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BehavioralTestKit.h"



@interface AMutableStringApple : BTGiven
@end



@implementation AMutableStringApple



- (void)setUp
{
    [[self delegate] setValue:[NSMutableString stringWithString:@"Apple"] forKey:@"theString"];
}



@end
