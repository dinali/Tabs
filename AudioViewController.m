//
//  ERSViewController.m
//  _audioPlayer
//
//  Created by Dina Li on 10/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AudioViewController.h"

@implementation AudioViewController

@synthesize volumeControl = _volumeControl;
@synthesize stopButton = _stopButton;
@synthesize playButton = _playButton;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize audioPlayer = _audioPlayer;

-(IBAction)playAudio:(id)sender
{
    NSURL *url = [[NSURL alloc] init];
    
   // [self setupAV_audioPlayerForURL:url];
    url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"HouseBlessing"
                                         ofType:@"mp3"]];
    
    NSError *error;
    _audioPlayer = [[AVAudioPlayer alloc]
                    initWithContentsOfURL:url
                    error:&error];
    if (error)
    {
        NSLog(@"Error in _audioPlayer: %@", 
              [error localizedDescription]);
    } else {
        _audioPlayer.delegate = self;
        @try {
            [_audioPlayer prepareToPlay];
        }
        @catch (NSException *exception) {
            NSLog(@"exception prepareToPlay = %@", exception);
        }
        @finally {
            _audioPlayer = nil;
        }
    }
    [_audioPlayer play];
}

-(IBAction)stopAudio
{
    [_audioPlayer stop];
}
-(IBAction)adjustVolume
{
    if (_audioPlayer != nil)
    {
        _audioPlayer.volume = volumeControl.value;
    }
} 

-(IBAction) BtnGoLocalClick:(id)sender {
    
    // - - - Pull media from documents direction
    
    //NSString* saveFileName = @"MyAudio.mp3";
    //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //NSString *documentsDirectory = [paths objectAtIndex:0];
    //NSString *path = [documentsDirectory stringByAppendingPathComponent:saveFileName];
      // [self setupAV_audioPlayerForURL:url];
}

-(void) setupAV_audioPlayerForURL: (NSURL*) url {
    AVAsset *asset = [AVURLAsset URLAssetWithURL:url options:nil];
    AVPlayerItem *anItem = [AVPlayerItem playerItemWithAsset:asset];
    
    _audioPlayer = [AVPlayer playerWithPlayerItem:anItem];
    [_audioPlayer addObserver:self forKeyPath:@"status" options:0 context:nil];
}
/*
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if (object == _audioPlayer && [keyPath isEqualToString:@"status"]) {
        if (_audioPlayer.status == AVPlayerStatusFailed) {
            NSLog(@"AVPlayer Failed");
        } else if (player.status == AVPlayerStatusReadyToPlay) {
            NSLog(@"AVPlayer Ready to Play");
        } else if (player.status == AVPlayerItemStatusUnknown) {
            NSLog(@"AVPlayer Unknown");
        }
    }
}
 */

-(void)viewWillAppear:(BOOL)animated{
    _descriptionLabel.numberOfLines = 4;
    _descriptionLabel.lineBreakMode = UILineBreakModeWordWrap;
}
- (void)viewDidLoad {
    [super viewDidLoad];
   }


-(void)viewDidUnload
{
    self.volumeControl = nil;
}

-(void)_audioPlayerDidFinishPlaying:
(AVAudioPlayer *)_audioPlayer successfully:(BOOL)flag
{
}
-(void)_audioPlayerDecodeErrorDidOccur:
(AVAudioPlayer *)_audioPlayer error:(NSError *)error
{
    if (error)
    {
        NSLog(@"Error in _audioPlayer _audioPlayerDecodeError: %@", 
              [error localizedDescription]);
    }
}


@end