//
//  ScaryBossData.m
//  Scary Bosses
//
//  Created by Daniel Wood on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScaryBossData.h"

@implementation ScaryBossData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
