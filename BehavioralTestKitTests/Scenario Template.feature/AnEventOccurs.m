//
//  AnEventOccurs.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/18/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BTWhen.h"



@interface AnEventOccurs : BTWhen
@end



@implementation AnEventOccurs



- (void)occur
{
    [[self delegate] setValue:@"An event occurred" forKey:@"event"];
}



@end

