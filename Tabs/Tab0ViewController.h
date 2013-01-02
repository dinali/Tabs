//
//  Tab0ViewController.h
//  Tabs

// DISPLAYS the ERS twitter feed, as of Oct-2-2012, the interface needs to be replaced with a custom UITableCell. see: http://www.youtube.com/watch?v=0AsChJk422c the problem is that some of the twitter feeds have 2 links, the Custom Cell should have a UITextView in it instead of a UILabel. The UITextView can show hyperlinks. TweetTextViewController displays the link in a UIWebView (it works). Some of the links are like this:o/L67ypal3

//  Created by Dina Li on 9/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "ERSAppDelegate.h"
//#import "IconDownloader.h"

@interface Tab0ViewController : UITableViewController<UIScrollViewDelegate>
{
	NSArray *entries;   // the main data model for our UITableView
 //   NSMutableDictionary *imageDownloadsInProgress;  // the set of IconDownloader objects for each app
}

//@property (strong, nonatomic) ERSDetailViewController *detailViewController;
@property (nonatomic, strong) NSMutableArray *revisedArray;
//@property (nonatomic, strong) NSMutableDictionary *imageDownloadsInProgress;
//@property(nonatomic,strong)
@property (nonatomic, strong) NSMutableArray *tweetsArray;
@property (nonatomic, strong) ERSAppDelegate *appDelegate;

- (void)fetchTweets;
//- (void)appImageDidLoad:(NSIndexPath *)indexPath;

@end
