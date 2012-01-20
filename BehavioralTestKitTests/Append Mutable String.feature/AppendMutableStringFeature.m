//
//  AppendMutableStringFeature.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/18/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BehavioralTestKit.h"



@interface AppendMutableStringFeature : BTScenario

@property (nonatomic, retain) NSMutableString *theString;

@end



@implementation AppendMutableStringFeature



@synthesize theString;



- (void)testScenarioAlmondButter
{
    [self executeScenario:@""
     "GIVEN a mutable string: 'Almond'\n"
     "WHEN string is appended with: ' Butter'\n"
     "THEN ensure the string is: 'Almond Butter'"];
}



- (void)testScenarioAppleButter
{
    [self executeScenario:@""
     "GIVEN a mutable string: 'Apple'\n"
     "WHEN string is appended with: ' Butter'\n"
     "THEN ensure the string is: 'Apple Butter'"];
}



- (void)testScenarioPeanutButter
{
    [self executeScenario:@""
     "GIVEN a mutable string: 'Peanut'\n"
     "WHEN string is appended with: ' Butter'\n"
     "THEN ensure the string is: 'Peanut Butter'"];
}



@end
