//
//  STManagedObjectTestCase.h
//  Locations
//
//  Created by Michael Fleet on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//  cribbed from:
//  https://github.com/mbrugger/CoreDataDependentProperties/blob/master/LPAutomatedObserving/Tests/ManagedObjectSenTestCase.h



#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <SenTestingKit/SenTestingKit.h>



@interface STManagedObjectTestCase : SenTestCase 



- (id)insertNewObjectForEntityForName:(NSString *)entityName
                 withBundleIdentifier:(NSString *)bundleIdentifier
                          andResource:(NSString *)resourceName
                               ofType:(NSString *)resourceType;



- (NSManagedObjectContext *)contextForBundleIdentifier:(NSString *)bundleIdentifier
                                          withResource:(NSString *)resourceName
                                                ofType:(NSString *)resourceType;



@end