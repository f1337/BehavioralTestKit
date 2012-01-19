//
//  BTScenario.h
//  Locations
//
//  Created by Michael Fleet on 1/17/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>



@interface BTScenario : SenTestCase
- (void)executeScenario:(NSString *)scenario;
@end
