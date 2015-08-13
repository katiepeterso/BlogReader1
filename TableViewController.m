//
//  TableViewController.m
//  BlogReader1
//
//  Created by Katherine Peterson on 2015-08-13.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "TableViewController.h"

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
//    self.blogPosts = [dataDictionary objectForKey:@"posts"];
    
    self.blogPosts = @[@{kTitle: @"Betting Against Myself",
        kDate: @"07/19/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/07/19/betting-against-myself/",
        kAuthor: @"KatieExpatriated"
        },
        @{kTitle: @"A Race and a Not-So-Fun Run",
        kDate: @"07/09/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/07/09/a-race-and-a-not-so-fun-run/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"How to Travel Like a Spy",
        kDate: @"06/23/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/06/23/how-to-travel-like-a-spy/",
        kAuthor: @"Miss Expatria"
        },
      @{kTitle: @"Winning Friends",
        kDate: @"05/28/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/05/28/winning-friends/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"From Living in Hell to Hiking There",
        kDate: @"05/12/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/05/12/from-living-in-hell-to-hiking-there/",
        kAuthor: @"Jen Whalen - The Fire"
        },
      @{kTitle: @"Summer Goals",
        kDate: @"05/01/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/05/01/summer-goals/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Katie's Meadery",
        kDate: @"04/10/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/04/10/katies-meadery/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Going Home as a Visitor",
        kDate: @"04/08/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/04/08/going-home-as-a-visitor/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Hackfort - A Review",
        kDate: @"04/03/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/04/03/hackfort-a-review/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Truth Time - The Real Reason We Moved",
        kDate: @"03/20/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/03/20/truth-time-the-real-reason-we-moved/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Daydreaming About Summer Vacation",
        kDate: @"03/18/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/03/18/daydreaming-about-summer-vacation/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Calgary Makes Me Sick!",
        kDate: @"03/02/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/03/02/calgary-makes-me-sick/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Step One - An Update",
        kDate: @"02/27/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/27/step-one-an-update/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Podcast Roundup",
        kDate: @"02/24/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/24/podcast-roundup/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Ethiopian Cooking Minus Exotic Ingredients",
        kDate: @"02/18/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/18/ethiopian-cooking-minus-exotic-ingredients/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Winter Hiking - Not as Bad an Idea as You Might Think",
        kDate: @"02/18/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/18/winter-hiking-not-as-bad-an-idea-as-you-might-think/",
        kAuthor: @"KatieExpatriated"
        },
      @{kTitle: @"Chinook Days",
        kDate: @"02/12/2015",
        kImage: @"coffee.pdf",
        kURL: @"https://katieexpatriated.wordpress.com/2015/02/12/chinook-days/",
        kAuthor: @"KatieExpatriated"
        }];

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
    
    NSDictionary *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [blogPost valueForKey:kTitle];
    cell.detailTextLabel.text = [blogPost valueForKey:kAuthor];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
