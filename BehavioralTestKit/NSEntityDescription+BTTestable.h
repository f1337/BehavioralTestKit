//
//  NSEntityDescription+BTTestable.h
//  BehavioralTestKit
//
//  Created by Michael Fleet on 2/25/12.
//  Copyright (c) 2012 Michael R. Fleet. All rights reserved.
//



#import <CoreData/CoreData.h>



@interface NSEntityDescription(BTTestable)



/*!
 * Provides syntactic sugar for unit testing CoreData models within a dedicated
 * test target.
 *
 * Usage:
 * MYManagedObjectSubclass *instance = (MYManagedObjectSubclass *)[NSEntityDescription insertNewObjectForEntityForName:@"MYManagedObjectSubclass" andBundleForObject:self];
 *
 * Where "MYManagedObjectSubclass" is the class name of your NSManagedObject subclass,
 * and "self" is an instance of your test class (subclass of SenTestCase, for ex.).
 */
+ (id)insertNewObjectForEntityForName:(NSString *)entityName andBundleForObject:(NSObject *)object;



@end
