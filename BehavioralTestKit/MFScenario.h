//
//  MFScenario.h
//  Locations
//
//  Created by Michael Fleet on 1/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>



@interface MFScenario : SenTestCase
- (void)executeScenario:(NSString *)scenario;
@end
