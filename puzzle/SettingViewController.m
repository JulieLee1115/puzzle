//
//  SettingViewController.m
//  puzzle
//
//  Created by Julie Lee on 2014/11/20.
//  Copyright (c) 2014年 JulieLee. All rights reserved.
//

#import "SettingViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface SettingViewController (){
    int size;
}

@end

@implementation SettingViewController

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
    
//    //音楽を再生する
//    NSString *path =[[NSBundle mainBundle] pathForResource:@"2877" ofType:@"mp3"];
//    NSURL *url =[NSURL fileURLWithPath:path];
//    audio=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
//    [audio play]; //再生メゾットを呼び出す
    
    
    UIImage *image = [UIImage imageNamed:@"4745.jpg"];
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    // NSMutableDictionary *defaults = [NSMutableDictionary dictionary];
    NSData *imageData =[[NSData alloc] initWithData:UIImagePNGRepresentation(image)];
    [ud setObject:imageData forKey:@"imageKey"];
    
}
- (NSArray *)divideImage:(UIImage *)image
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    return result;
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
-(IBAction)pushbut
{
    UIImagePickerController *ipc = [[UIImagePickerController alloc] init] ;
    [ipc setSourceType:UIImagePickerControllerSourceTypePhotoLibrary] ;
    [ipc setDelegate:self] ;
    [ipc setAllowsEditing:YES] ;
    [self presentViewController:ipc animated:YES completion:nil] ;
}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
   // NSMutableDictionary *defaults = [NSMutableDictionary dictionary];
    NSData *imageData =[[NSData alloc] initWithData:UIImagePNGRepresentation(image)];
    [ud setObject:imageData forKey:@"imageKey"];
    
    pzImgView.image= image;//パズルにする画像を表示
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
