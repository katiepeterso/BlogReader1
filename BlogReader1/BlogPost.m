//
//  BlogPost.m
//  BlogReader1
//
//  Created by Katherine Peterson on 2015-08-13.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle:(NSString *)title {
    self = [super init];
    
    if (self) {
        self.title = title;
    }
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

@end
