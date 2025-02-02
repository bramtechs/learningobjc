#import "Ghosts.h"

@implementation Ghosts

-(instancetype) init: (int) minDoors
            maxDoors: (int) maxDoors
{
    self = [super init];
    if (self) {
        self.minDoors = minDoors;
        self.maxDoors = maxDoors;
    }
    return self;
}

-(instancetype) initWithDefaults
{
    return [self init: 2 maxDoors: 5];
}

-(void) play
{
    NSLog(@"TODO: Implement");
}

@end
