//
//  BTThen.h
//  Locations
//
//  Created by Michael Fleet on 1/16/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BehavioralTestKit.h"



@interface BTThen : BTFragment



/*!
 * HACK-TASTIC! "Scope-hijacking"
 * Passing a SenTestCase subclass' "self" reference into the local scope as "self",
 * thereby tricking any ST assertion macros run here into executing in the
 * SenTestCase subclass' scope.
 */
- (void)ensure:(id)me;



@end
