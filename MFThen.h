//
//  MFThen.h
//  Locations
//
//  Created by Michael Fleet on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import <SenTestingKit/SenTestingKit.h>



@interface MFThen : SenTestCase



@property (nonatomic, assign) id delegate;



- (BOOL)ensure;



@end
