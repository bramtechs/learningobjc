#import "Ghosts.h"

@implementation Ghosts

-(instancetype) init: (int) minDoors
            maxDoors: (int) maxDoors
{
    self = [super init];
    if (self) {
        self.minDoors = minDoors;
        self.maxDoors = maxDoors;
        self.utils = [Utils alloc];
    }
    return self;
}

-(instancetype) initWithDefaults
{
    return [self init: 2 maxDoors: 7];
}

-(BOOL) playRound
{
    int totalDoors = [self.utils getRandomNumberBetween:self.minDoors max:self.maxDoors];
    
    NSLog(@"Score %d", self.score);
    NSLog(@"There are %d doors in front of you. Behind one of the doors is a ghost!", totalDoors);
    NSLog(@"Which door will you take? Type a number from 1-%d", totalDoors);
    
    int userDoor = -1;
    do {
        scanf("%d", &userDoor);
    } while (userDoor < 1 || userDoor > totalDoors);
        
    int hauntedDoor = [self.utils getRandomNumberBetween:1 max:totalDoors];
    
    BOOL survived = userDoor != hauntedDoor;
    return survived;
}

-(void) play
{
    bool isAlive = true;
    
    NSLog(@"You are in a so called \"Ghost mansion\" that contains some spooky scary ghosts!");
        
    while (isAlive)
    {
        if ([self playRound]) {
            NSLog(@"No ghost behind this door.");
            self.score++;
        } else {
            NSLog(@"You got spooked to death by a ghost!");
            NSLog(@"Your survived %d doors.", self.score);
            break;
        }
    }
}

@end
