#import <Foundation/Foundation.h>
#import "Utils.h"

NS_ASSUME_NONNULL_BEGIN

@interface Ghosts : NSObject

@property int maxDoors;
@property int minDoors;
@property int score;

@property Utils* utils;

-(instancetype) init: (int) minDoors
            maxDoors: (int) maxDoors;

-(instancetype) initWithDefaults;

-(void) play;

@end

NS_ASSUME_NONNULL_END
