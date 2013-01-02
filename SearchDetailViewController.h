//
//  SearchDetailViewController.h
//  Tabs
//
//  Created by Dina Li on 10/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchDetailViewController : UIViewController {
	
	IBOutlet UILabel *lblText;
	NSString *selectedCountry;
}

@property (nonatomic, retain) NSString *selectedCountry;
@end
