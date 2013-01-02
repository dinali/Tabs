//
//  ERSViewController.h
//  AudioPlayer

/*  That is a confirmed bug of the iOS SDK 5 / Simulator - happens as soon as the simulator tries to play sound (from a movie or any other sound source). Do not worry though, it won't be a problem on the actual device. Still a problem running iOS5 simulator in iOS6 (source: http://stackoverflow.com/questions/7961840/what-does-this-gdb-output-mean/8317546#8317546)
*/

//  http://www.techotopia.com/index.php/Playing_Audio_on_an_iPhone_using_AVAudioPlayer
//  Created by Dina Li on 10/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>

@interface AudioViewController : UIViewController
<AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer;
    UISlider *volumeControl;
}
@property (strong, nonatomic) IBOutlet UISlider *volumeControl;
@property(strong,nonatomic) IBOutlet UILabel *descriptionLabel;
@property(strong, nonatomic) IBOutlet UIButton *playButton;
@property(strong, nonatomic) IBOutlet UIButton *stopButton;
@property(strong, nonatomic) AVAudioPlayer *audioPlayer;

/*
-(IBAction) BtnGoClick:(id)sender;
-(IBAction) BtnGoLocalClick:(id)sender;
-(IBAction) BtnPlay:(id)sender;
-(IBAction) BtnPause:(id)sender;
-(void) setupAVPlayerForURL: (NSURL*) url;
 */

-(IBAction) playAudio:(id)sender;
-(IBAction) stopAudio;
-(IBAction) adjustVolume;
@end