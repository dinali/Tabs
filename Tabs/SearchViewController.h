//
//  SearchViewController.h
//  Tabs
//
//  Created by Dina Li on 10/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//  Created by iPhone SDK Articles on 1/17/09.
// modified to use delegate instead of OverlayViewController
//  Copyright www.iPhoneSDKArticles.com 2009. 
//

#import <UIKit/UIKit.h>
@class OverlayViewController;

@interface SearchViewController : UITableViewController<UISearchDisplayDelegate, UISearchBarDelegate> {
	
	NSMutableArray *listOfItems;
	NSMutableArray *copyListOfItems;
	IBOutlet UISearchBar *searchBar;
	BOOL searching;
	BOOL letUserSelectRow;
	
	OverlayViewController *ovController;
}
- (void) searchTableView;
- (void) doneSearching_Clicked:(id)sender;

@end
