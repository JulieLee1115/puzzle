//
//  GameViewController.h
//  puzzle
//
//  Created by Julie Lee on 2014/11/20.
//  Copyright (c) 2014年 JulieLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
@import GoogleMobileAds;
@interface GameViewController : UIViewController<GADInterstitialDelegate>

{
    IBOutlet UILabel *timeLabel;
    GADInterstitial *interstitial_;
    
         AVAudioPlayer *audio ;
    
    int min;
    int sec;
    
    NSTimer * timer ;
    IBOutlet UIButton *bt0;
    IBOutlet UIButton *bt1;
    IBOutlet UIButton *bt2;
    IBOutlet UIButton *bt3;
    IBOutlet UIButton *bt4;
    IBOutlet UIButton *bt5;
    IBOutlet UIButton *bt6;
    IBOutlet UIButton *bt7;
    IBOutlet UIButton *bt8;
    IBOutlet UIButton *bt9;
    IBOutlet UIButton *bt10;
    IBOutlet UIButton *bt11;
    IBOutlet UIButton *bt12;
    IBOutlet UIButton *bt13;
    IBOutlet UIButton *bt14;
    IBOutlet UIButton *bt15;
    
    IBOutlet UILabel *clearLabel;
    IBOutlet UIImageView *keyImgView;
    IBOutlet UIImageView  *imgView;
    //効果音
    SystemSoundID sound_1;


    
}

-(void)up;

@end
