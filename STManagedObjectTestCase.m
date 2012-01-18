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



- (NSManagedObjectContext *)contextForResource:(NSString *)resourceName ofType:(NSString *)resourceType
{
		NSBundle* bundle = [NSBundle bundleWithIdentifier:[self bundleIdentifier]];
		NSString* path = [bundle pathForResource:resourceName ofType:resourceType];
		NSURL* modelURL = [NSURL URLWithString:path];
		NSManagedObjectModel *model = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];

		NSPersistentStoreCoordinator *coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];

		NSError* error = nil;

		[coordinator addPersistentStoreWithType:NSInMemoryStoreType 
									   configuration:nil 
												 URL:nil 
											 options:nil 
											   error:&error];

		NSManagedObjectContext* tempContext = [[NSManagedObjectContext alloc] init];


		[tempContext setPersistentStoreCoordinator:coordinator];

        return tempContext;
}



@end