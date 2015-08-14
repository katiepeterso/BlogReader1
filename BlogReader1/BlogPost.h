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
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSURL *url;

// Designated initializer
- (id) initWithTitle:(NSString *)title;

// Convenience constructor
+ (id) blogPostWithTitle:(NSString *)title;

- (NSURL *) imageURL;

//Date formatter
- (NSString *) formattedDate;

@end
