//
//  ViewController.m
//  UIActivityViewControllerSample
//
//  Created by Dolice on 2013/04/07.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

//共有ボタンイベント
- (IBAction)share:(id)sender {
  if( [UIActivityViewController class] ) {
    //共有テキスト設定
    NSString *textToShare = [NSString stringWithFormat:@"%@", @"共有するテキストがここに入ります"];
    //共有イメージ設定
    UIImage *imageToShare = [self image];
    //共有アイテム生成
    NSArray *itemsToShare = [[NSArray alloc] initWithObjects:textToShare, imageToShare, nil];
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:itemsToShare applicationActivities:nil];
    activityVC.excludedActivityTypes = [[NSArray alloc] initWithObjects: UIActivityTypePrint, UIActivityTypeCopyToPasteboard, UIActivityTypeAssignToContact, UIActivityTypeSaveToCameraRoll, UIActivityTypeMessage, UIActivityTypePostToWeibo, nil];
    [self presentViewController:activityVC animated:YES completion:nil];
  }
}

//画像ファイルを取得
- (UIImage *)image
{
  UIImageView *imageView = [[UIImageView alloc] init];
  imageView.image = [UIImage imageNamed:@"Pandora_640_1136.jpg"];
  return (imageView.image);
}

@end
