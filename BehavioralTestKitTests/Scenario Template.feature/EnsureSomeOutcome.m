//
//  EnsureSomeOutcome.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/18/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BTThen.h"



@interface EnsureSomeOutcome : BTThen
@end



@implementation EnsureSomeOutcome



/*!
 * HACK-TASTIC! "Scope-hijacking"
 * Passing a SenTestCase subclass' "self" reference into the local scope as "self",
 * thereby tricking any ST assertion macros run here into executing in the
 * SenTestCase subclass' scope.
 */
- (void)ensure:(id)self
{
    
    STAssertTrue(YES, @"Test something");
}


@end
