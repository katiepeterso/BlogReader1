//
//  TableViewController.h
//  BlogReader1
//
//  Created by Katherine Peterson on 2015-08-13.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const kTitle;
extern NSString *const kDate;
extern NSString *const kImage;
extern NSString *const kURL;
extern NSString *const kAuthor;

@interface TableViewController : UITableViewController
@property (strong, nonatomic) NSArray *blogPosts;
@end
