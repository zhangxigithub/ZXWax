//
//  ViewController.h
//  ZXWax
//
//  Created by 张 玺 on 13-1-4.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *content;


- (IBAction)hideKeyboard:(id)sender;
- (IBAction)loadLua:(id)sender;
- (IBAction)run:(id)sender;

@end
