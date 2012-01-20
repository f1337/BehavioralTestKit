//
//  EnsureTheStringIsAlmondButter.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/19/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BehavioralTestKit.h"



@interface EnsureTheStringIsAlmondButter : BTThen
@end



@implementation EnsureTheStringIsAlmondButter



/*!
 * HACK-TASTIC! "Scope-hijacking"
 * Passing a SenTestCase subclass' "self" reference into the local scope as "self",
 * thereby tricking any ST assertion macros run here into executing in the
 * SenTestCase subclass' scope.
 */
- (void)ensure:(id)self
{
    NSString *theString = [self valueForKey:@"theString"];
    NSString *expectedString = @"Almond Butter";
    STAssertTrue([theString isEqualToString:expectedString], @"'%@' should equal '%@'", theString, expectedString);
}


@end
