//
//  NSEntityDescription+BTTestable.m
//  BehavioralTestKit
//
//  Created by Michael Fleet on 2/25/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import "NSEntityDescription+BTTestable.h"



@implementation NSEntityDescription(BTTestable)



+ (NSManagedObjectContext *)sharedTestContextForClass:(Class)klass
{
    static NSManagedObjectContext *context = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^
    {
        NSArray *bundles = [NSArray arrayWithObject:[NSBundle bundleForClass:klass]];
        NSManagedObjectModel *model = [NSManagedObjectModel mergedModelFromBundles:bundles];
        NSPersistentStoreCoordinator *coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
        
        [coordinator addPersistentStoreWithType:NSInMemoryStoreType 
                                  configuration:nil 
                                            URL:nil 
                                        options:nil 
                                          error:NULL];
        
        context = [[NSManagedObjectContext alloc] init];
        [context setPersistentStoreCoordinator:coordinator];
    });

    return context;
}



@end
