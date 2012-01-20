//
//  SomeInitialContext.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/18/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BTGiven.h"



@interface SomeInitialContext : BTGiven
@end



@implementation SomeInitialContext



- (void)setUp
{
    [[self delegate] setValue:@"Some initial context" forKey:@"context"];
}



@end
