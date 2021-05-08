#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    
    NSArray *t = [self sortedArrayUsingSelector:@selector(compare:)];
   NSNumber *n =  [t firstObject];
    NSLog(@"%@", [t firstObject]);
    
    return n;
}

@end
