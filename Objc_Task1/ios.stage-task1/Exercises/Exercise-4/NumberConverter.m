#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSInteger n = ABS([number intValue]);
    NSMutableArray *result = [[NSMutableArray alloc] init];
    NSInteger i = 0;
    while (n > 0) {
        result[i] = [NSString stringWithFormat:@"%ld", n % 10];
        n = n / 10;
        i++;
    }
    return result;
}

@end
