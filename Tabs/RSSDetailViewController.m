//
//  RSSDetailViewController.m
//  Tabs
//  DISPLAYS the description for the feed if it exists
//  Created by Dina Li on 10/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RSSDetailViewController.h"
#import "Record.h"

@interface RSSDetailViewController ()

@end

@implementation RSSDetailViewController

@synthesize detailItem = _detailItem;
@synthesize descriptionTextView = _descriptionTextView;

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        [self configureView];
    }
}

-(void)configureView
{
    if (self.detailItem) {
        Record *feedRecord = self.detailItem;
        
        _descriptionTextView.text = feedRecord.descriptionString;
        NSLog(@"description = %@",_descriptionTextView.text);
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self configureView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // [self configureView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
