//
//  ViewController.m
//  puzzle
//
//  Created by Julie Lee on 2014/11/13.
//  Copyright (c) 2014年 JulieLee. All rights reserved.
//

#import "ViewController.h"
#import <iAd/iAd.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //音楽を再生する
    NSString *path =[[NSBundle mainBundle] pathForResource:@"2877" ofType:@"mp3"];
    NSURL *url =[NSURL fileURLWithPath:path];
    audio=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    [audio play]; //再生メゾットを呼び出す
    
}
- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError * )error{
    // 広告失敗時の処理を書く
    banner.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}




@end
