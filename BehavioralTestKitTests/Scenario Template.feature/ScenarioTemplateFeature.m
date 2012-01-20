//
//  ScenarioTemplateFeature.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 1/18/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "BTScenario.h"



@interface ScenarioTemplateFeature : BTScenario
{
    NSString *context;
    NSString *event;
}
@end



@implementation ScenarioTemplateFeature



- (void)testScenarioTemplateFeature
{
    [self executeScenario:@""
     "GIVEN some initial context\n"
     "WHEN an event occurs\n"
     "THEN ensure some outcome"];
}



@end
