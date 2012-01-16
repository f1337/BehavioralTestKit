//
//  STManagedObjectTestCase.h
//  Locations
//
//  Created by Michael Fleet on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
//  cribbed from:
//  https://github.com/mbrugger/CoreDataDependentProperties/blob/master/LPAutomatedObserving/Tests/ManagedObjectSenTestCase.h

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

#import <SenTestingKit/SenTestingKit.h>


@interface STManagedObjectTestCase : SenTestCase 

@property (retain,nonatomic) NSPersistentStoreCoordinator *coordinator;
@property (retain,nonatomic) NSManagedObjectContext *context;
@property (retain,nonatomic) NSManagedObjectModel *model;


@end