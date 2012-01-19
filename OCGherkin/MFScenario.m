//
//  MFScenario.m
//  Locations
//
//  Created by Michael Fleet on 1/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//



#import "MFScenario.h"
#import "MFGiven.h"
#import "MFWhen.h"
#import "MFThen.h"



@implementation MFScenario



- (NSString *)classNameFromScenarioFragment:(NSString *)fragment
{
    // capitalize the scenario fragment and split into words
    NSArray *words = [[fragment capitalizedString] componentsSeparatedByString:@" "];
    // join the second through last words back into a string, dropping spaces
    NSString *className = [[words objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(1, [words count] - 1)]] componentsJoinedByString:@""];

	NSError *error = NULL;
	NSRegularExpression *regex = [NSRegularExpression         
								  regularExpressionWithPattern:@"[^a-zA-Z]+"
								  options:NSRegularExpressionCaseInsensitive
								  error:&error];

    // remove any non-alphabetical characters and return
    return [regex stringByReplacingMatchesInString:className options:0 range:NSMakeRange(0, [className length]) withTemplate:@""];
}



- (void)executeScenario:(NSString *)scenario
{
    NSLog(@"Scenario: \n%@", scenario);
    NSArray *fragments = [scenario componentsSeparatedByString:@"\n"];
    for (NSString *fragment in fragments)
    {
        NSString *className = [self classNameFromScenarioFragment:fragment];
        id fragmentObject = [[NSClassFromString(className) alloc] init];
        
        [fragmentObject setDelegate:self];
        
        if ( [fragmentObject respondsToSelector:@selector(setUp)] )
        {
            [fragmentObject setUp];
        }
        
        if ( [fragmentObject respondsToSelector:@selector(occur)] )
        {
            [fragmentObject occur];
        }
        
        if ( [fragmentObject respondsToSelector:@selector(ensure:)] )
        {
            [fragmentObject ensure:self];
        }
    }
}




@end
