//
//  ERSViewController.m
//  Movie
//
//  Created by Dina Li on 10/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MovieViewController.h"

@implementation MovieViewController

@synthesize moviePlayer;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize logoView = _logoView;
@synthesize youTubeView = _youTubeView;

-(void)playMovie
{
      NSURL *url = [NSURL URLWithString:@"http://www.ebookfrenzy.comios_book/movie/movie.mov"];
    
   // NSURL *url = [NSURL URLWithString:@"http://www.youtube.com/watch?v=vGOrvTTuwJc&feature=relmfu"];
    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:url];
   // NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] 
  //                                       pathForResource:@"MOVIE" ofType:@"MOV"]];
   
    moviePlayer =  [[MPMoviePlayerController alloc]
                    initWithContentURL:url];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:moviePlayer];
    
    moviePlayer.controlStyle = MPMovieControlStyleDefault;
    moviePlayer.shouldAutoplay = YES;
    [self.view addSubview:moviePlayer.view];
    [moviePlayer setFullscreen:YES animated:YES];
}

- (void) moviePlayBackDidFinish:(NSNotification*)notification {
    MPMoviePlayerController *player = [notification object];
    [[NSNotificationCenter defaultCenter] 
     removeObserver:self
     name:MPMoviePlayerPlaybackDidFinishNotification
     object:player];
    
    if ([player
         respondsToSelector:@selector(setFullscreen:animated:)])
    {
        [player.view removeFromSuperview];
    }
}

-(void) embedYouTube{
    
    // NOTE the strange format of the YouTube URL! 
    NSString *video_ID = @"vGOrvTTuwJc";  // ERS Food Prices video on YouTube
    
    NSString *htmlStr = [NSString stringWithFormat:@"<iframe class=\"youtube-player\" type=\"text/html\" width=\"320\" height=\"480\" src=\"http://www.youtube.com/embed/%@\" frameborder=\"0\"></iframe>",video_ID];
    
    [_youTubeView loadHTMLString:htmlStr baseURL:nil];
}

-(void) viewDidLoad{
    [self embedYouTube];
}
@end


