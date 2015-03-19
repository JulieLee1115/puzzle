//
//  GameOverViewController.m
//  puzzle
//
//  Created by Julie Lee on 2014/11/20.
//  Copyright (c) 2014年 JulieLee. All rights reserved.
//

#import "GameOverViewController.h"

@interface GameOverViewController ()

@end

@implementation GameOverViewController

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
    // Do any additional setup after loading the view.
    
    //音楽を再生する
    NSString *path =[[NSBundle mainBundle] pathForResource:@"2877" ofType:@"mp3"];
    NSURL *url =[NSURL fileURLWithPath:path];
    audio=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    [audio play]; //再生メゾットを呼び出す
    
    
    //後で消す
    if(_receiveString ==true){
      imgView.image = [UIImage imageNamed:@"15.png"];
    }else{
        imgView.image = [UIImage imageNamed:@"pazuru.png"];
    }
    
    

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


@end
