#import <Foundation/Foundation.h>
#include "Ghosts.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Ghosts* ghosts = [[Ghosts alloc] initWithDefaults];
        
        [ghosts play];
    }
    return 0;
}
