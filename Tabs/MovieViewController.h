//
//  ERSViewController.h
//  Movie
//  http://www.techotopia.com/index.php/Video_Playback_from_within_an_iOS_5_iPhone_Application
//  Created by Dina Li on 10/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MovieViewController : UIViewController
{
    MPMoviePlayerController *moviePlayer;
    UIWebView* youTubeView;
}
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
@property (strong, nonatomic) IBOutlet UILabel* descriptionLabel;
@property(strong, nonatomic) IBOutlet UIImageView* logoView;
@property(strong,nonatomic) IBOutlet UIWebView* youTubeView;

-(IBAction) playMovie;
- (void) embedYouTube;

@end
