//
//  STManagedObjectTestCase.m
//  Locations
//
//  Created by Michael Fleet on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import "STManagedObjectTestCase.h"


@implementation STManagedObjectTestCase



- (id)insertNewObjectForEntityForName:(NSString *)entityName
                 withBundleIdentifier:(NSString *)bundleIdentifier
                          andResource:(NSString *)resourceName
                               ofType:(NSString *)resourceType
{
    NSManagedObjectContext *context = [self contextForBundleIdentifier:@"com.carbonmolecule.LocationsTests" withResource:@"Locations" ofType:@"momd"];
    return [NSEntityDescription insertNewObjectForEntityForName:@"CMTrap" inManagedObjectContext:context];
}



- (NSManagedObjectContext *)contextForBundleIdentifier:(NSString *)bundleIdentifier
                                          withResource:(NSString *)resourceName
                                                ofType:(NSString *)resourceType
{
		NSBundle* bundle = [NSBundle bundleWithIdentifier:bundleIdentifier];
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