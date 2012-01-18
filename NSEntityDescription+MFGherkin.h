//
//  NSEntityDescription+MFGherkin.h
//  Locations
//
//  Created by Michael Fleet on 1/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface NSEntityDescription(MFGherkin)



+ (id)insertNewObjectForEntityForName:(NSString *)entityName
                 withBundleIdentifier:(NSString *)bundleIdentifier
                          andResource:(NSString *)resourceName
                               ofType:(NSString *)resourceType;



@end
