//
//  NSEntityDescription+BTTestable.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 2/25/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "NSEntityDescription+BTTestable.h"



@implementation NSEntityDescription(BTTestable)



+ (id)insertNewObjectForEntityForName:(NSString *)entityName andBundleForObject:(NSObject *)object
{
//    NSArray *bundles = [NSArray arrayWithObject:[NSBundle bundleForClass:[self class]]];
//    model = [NSManagedObjectModel mergedModelFromBundles:bundles];
//    NSLog(@"model: %@", model);
//    coord = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
//    store = [coord addPersistentStoreWithType: NSInMemoryStoreType
//                                configuration: nil
//                                          URL: nil
//                                      options: nil 
//                                        error: NULL];
//    ctx = [[NSManagedObjectContext alloc] init];
//    [ctx setPersistentStoreCoordinator: coord];
//
//    
//
    NSArray *bundles = [NSArray arrayWithObject:[NSBundle bundleForClass:[object class]]];
    NSManagedObjectModel *model = [NSManagedObjectModel mergedModelFromBundles:bundles];
    NSPersistentStoreCoordinator *coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];

    [coordinator addPersistentStoreWithType:NSInMemoryStoreType 
                              configuration:nil 
                                        URL:nil 
                                    options:nil 
                                      error:NULL];

    NSManagedObjectContext* context = [[NSManagedObjectContext alloc] init];
    [context setPersistentStoreCoordinator:coordinator];
    
    return [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:context];
}



@end
