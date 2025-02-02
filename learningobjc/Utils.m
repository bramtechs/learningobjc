#import "Utils.h"

@implementation Utils

- (int)getRandomNumberBetween:(int)min max:(int)max {
    return arc4random_uniform(max-min+1) + min;
}

@end
