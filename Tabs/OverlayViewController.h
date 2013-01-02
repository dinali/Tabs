//
//  OverlayViewController.h
//  Tabs
//
//  Created by Dina Li on 10/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SearchViewController;

@interface OverlayViewController : UIViewController {
    
	SearchViewController *rvController;
}

@property (nonatomic, retain) SearchViewController *rvController;

@end
