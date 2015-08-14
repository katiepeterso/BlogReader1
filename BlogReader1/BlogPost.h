//
//  BlogPost.h
//  BlogReader1
//
//  Created by Katherine Peterson on 2015-08-13.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;

// Designated initializer
- (id) initWithTitle:(NSString *)title;

// Convenience constructor
+ (id) blogPostWithTitle:(NSString *)title;

@end
