//
//  TableViewController.m
//  BlogReader1
//
//  Created by Katherine Peterson on 2015-08-13.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "TableViewController.h"
#import "BlogPost.h"
#import "WebViewController.h"

NSString *const kTitle = @"title";
NSString *const kDate = @"date";
NSString *const kImage = @"image";
NSString *const kURL = @"url";
NSString *const kAuthor = @"author";

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSURL *blogURL = [NSURL URLWithString:@""];
//    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
//    NSError *error = nil;
//    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    
    self.blogPosts = [NSMutableArray array];
    
//    NSArray *blogPostsArray = [dataDictionary objectForKey:@"posts"];
    
    NSArray *blogPostsArray = @[@{kTitle: @"Betting Against Myself",
        kDate: @"07/19/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/07/img_2376.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/07/19/betting-against-myself/",
        kAuthor: @"KatieExpatriated"
        },
        @{kTitle: @"A Race and a Not-So-Fun Run",
        kDate: @"07/09/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/07/fcerta4-tmpl-810-diij-e1436109607930.jpeg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/07/09/a-race-and-a-not-so-fun-run/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"How to Travel Like a Spy",
        kDate: @"06/23/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/06/bourne.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/06/23/how-to-travel-like-a-spy/",
        kAuthor: @"Miss Expatria"
        },
      @{kTitle: @"Winning Friends",
        kDate: @"05/28/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/05/img_2071.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/05/28/winning-friends/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"From Living in Hell to Hiking There",
        kDate: @"05/12/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/05/545148_10150803027861930_519382965_n.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/05/12/from-living-in-hell-to-hiking-there/",
        kAuthor: @"Jen Whalen - The Fire"
        },
      @{kTitle: @"Summer Goals",
        kDate: @"05/01/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/04/img_2092-e1429628625141.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/05/01/summer-goals/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Katie's Meadery",
        kDate: @"04/10/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/03/img_1939.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/04/10/katies-meadery/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Going Home as a Visitor",
        kDate: @"04/08/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/04/img_1985.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/04/08/going-home-as-a-visitor/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Hackfort - A Review",
        kDate: @"04/03/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/03/img_1973.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/04/03/hackfort-a-review/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Truth Time - The Real Reason We Moved",
        kDate: @"03/20/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/03/img_2370.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/03/20/truth-time-the-real-reason-we-moved/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Daydreaming About Summer Vacation",
        kDate: @"03/18/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/03/img_0780-e1426273347577.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/03/18/daydreaming-about-summer-vacation/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Calgary Makes Me Sick!",
        kDate: @"03/02/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/03/img_18071-e1426725010897.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/03/02/calgary-makes-me-sick/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Step One - An Update",
        kDate: @"02/27/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/02/img_1293.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/27/step-one-an-update/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Podcast Roundup",
        kDate: @"02/24/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/02/img_1264-e1424836744886.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/24/podcast-roundup/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Ethiopian Cooking Minus Exotic Ingredients",
        kDate: @"02/18/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/02/screen-shot-2015-02-19-at-11-21-48-am.png",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/18/ethiopian-cooking-minus-exotic-ingredients/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Winter Hiking - Not as Bad an Idea as You Might Think",
        kDate: @"02/18/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/02/img_1730.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/18/winter-hiking-not-as-bad-an-idea-as-you-might-think/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Chinook Days",
        kDate: @"02/12/2015",
        kImage: @"https://katieexpatriated.files.wordpress.com/2015/02/img_1676.jpg",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/12/chinook-days/",
        kAuthor: @"KatieExpatriated"
        }];
    
    for (NSDictionary *bpDictionary in blogPostsArray) {
        BlogPost *blogPost = [BlogPost blogPostWithTitle:[bpDictionary objectForKey:kTitle]];
        blogPost.author = [bpDictionary objectForKey:kAuthor];
        blogPost.image = [bpDictionary objectForKey:kImage];
        blogPost.date = [bpDictionary objectForKey:kDate];
        blogPost.url = [NSURL URLWithString:[bpDictionary objectForKey:kURL]];
        [self.blogPosts addObject:blogPost];
     }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.blogPosts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    if ([blogPost.image isKindOfClass:[NSString class]]) {
        NSData *imageData = [NSData dataWithContentsOfURL:blogPost.imageURL];
        UIImage *image = [UIImage imageWithData:imageData];
        cell.imageView.image = image;
    } else {
        cell.imageView.image = [UIImage imageNamed:@"IMG_1903.JPG"];
    }
    
    cell.textLabel.text = blogPost.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", blogPost.author, [blogPost formattedDate]];
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showBlogPost"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
        [segue.destinationViewController setBlogPostURL:blogPost.url];
    }
    
}

@end
