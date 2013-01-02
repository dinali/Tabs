//
//  OverlayViewController.m
//  Tabs
//
//  Created by Dina Li on 10/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OverlayViewController.h"
#import "SearchViewController.h"

@implementation OverlayViewController

@synthesize rvController;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [[event allTouches] anyObject];
//    if ([rvController searchBar isFirstResponder] && [touch view] != [rvController searchBar]) 
//    {
//        [searchBar resignFirstResponder];
//        //        [self.myViewController1.customView1 setUserInteractionEnabled:YES];
//        //        [self.myViewController2.customView2 setUserInteractionEnabled:YES];
//    }
    [super touchesBegan:touches withEvent:event];

	[rvController doneSearching_Clicked:nil];
}
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
//{    
//    UITouch *touch = [[event allTouches] anyObject];
//    if ([searchBar isFirstResponder] && [touch view] != searchBar) 
//    {
//        [searchBar resignFirstResponder];
//        //        [self.myViewController1.customView1 setUserInteractionEnabled:YES];
//        //        [self.myViewController2.customView2 setUserInteractionEnabled:YES];
//    }
//    [super touchesBegan:touches withEvent:event];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}



@end
