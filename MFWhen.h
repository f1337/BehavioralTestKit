//
//  MFWhen.h
//  Locations
//
//  Created by Michael Fleet on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import "STManagedObjectTestCase.h"



@interface MFWhen : STManagedObjectTestCase



@property (nonatomic, assign) id delegate;



- (void)occur;



@end
