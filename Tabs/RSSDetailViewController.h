//
//  RSSDetailViewController.h
//  Tabs
//
//  Created by Dina Li on 10/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSSDetailViewController : UIViewController
@property (strong, nonatomic) id detailItem;
@property (strong,nonatomic) IBOutlet UITextView * descriptionTextView;
@end
