#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSUInteger length = [self length];
    
    if (length <= 0 || length > 100) {
        return NO;
    }
    
    BOOL result = YES;
    
    for (int i = 0; i < length; i++) {
        if (![[NSCharacterSet decimalDigitCharacterSet] characterIsMember: [self characterAtIndex:i]]) {
            result = NO;
            break;
        }
    }
    
    return result;
}

@end
