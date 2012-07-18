//
//  ScaryBossDoc.m
//  Scary Bosses
//
//  Created by Daniel Wood on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScaryBossDoc.h"
#import "ScaryBossData.h"

@implementation ScaryBossDoc

@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {   
    if ((self = [super init])) {
        self.data = [[ScaryBossData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end
