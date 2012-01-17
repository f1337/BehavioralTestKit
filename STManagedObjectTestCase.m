//
//  STManagedObjectTestCase.m
//  Locations
//
//  Created by Michael Fleet on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import "STManagedObjectTestCase.h"


@implementation STManagedObjectTestCase



@synthesize bundleIdentifier;
@synthesize coordinator;
@synthesize context;
@synthesize model;



-(void) setUp
{
	@try
	{
		NSBundle* bundle = [NSBundle bundleWithIdentifier:[self bundleIdentifier]];
//		NSBundle* bundle = [NSBundle bundleWithIdentifier:@"com.carbonmolecule.LocationsTests"];
		NSString* path = [bundle pathForResource:@"Locations" ofType:@"momd"];
		NSURL* modelURL = [NSURL URLWithString:path];
		self.model = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
		
		self.coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.model];
		
		NSError* error = nil;

		[self.coordinator addPersistentStoreWithType:NSInMemoryStoreType 
									   configuration:nil 
												 URL:nil 
											 options:nil 
											   error:&error];

		NSManagedObjectContext* tempContext = [[NSManagedObjectContext alloc] init];
		
		
		[tempContext setPersistentStoreCoordinator:coordinator];
        		
#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
		tempContext.undoManager = [[NSUndoManager alloc] init];
#endif
		
		self.context = tempContext;
	}
	@catch (NSException * e)
	{
		STAssertTrue(e == nil, @"error - %@", e);
	}
}

-(void) tearDown
{
	@try
	{
		self.context= nil;
		self.model = nil;
		self.coordinator = nil;
	}
	@catch (NSException * e)
	{
		NSLog(@"%@",e);
		//NSLog(@"%@", [e callStackSymbols]);
		NSLog(@"context reset failed!");
		@throw(e);
		
	}
}


-(void) testSetup
{
	STAssertNotNil(self.model, @"error loading model");
	STAssertNotNil(self.coordinator, @"error loading coordinator");
	STAssertNotNil(self.context, @"error loading context");
	
	NSArray* allEntities = [model entities];
	STAssertTrue(allEntities.count > 0, @"no entities in bundle!");	
}

@end