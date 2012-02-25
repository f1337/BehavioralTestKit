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
 * MYManagedObjectSubclass *instance = (MYManagedObjectSubclass *)[NSEntityDescription insertNewObjectForEntityForName:@"MYManagedObjectSubclass" inManagedObjectContext:[NSEntityDescription sharedTestContextForClass:[MYTestCase class]]];
 *
 * Where "MYManagedObjectSubclass" is the class name of your NSManagedObject subclass,
 * and "MYTestCase" is the class name of your test class (subclass of SenTestCase, for ex.).
 */
+ (NSManagedObjectContext *)sharedTestContextForClass:(Class)klass;



@end
