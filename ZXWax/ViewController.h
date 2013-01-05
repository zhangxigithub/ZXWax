//
//  ViewController.h
//  ZXWax
//
//  Created by 张 玺 on 13-1-4.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <wax/wax.h>
#import <wax/wax_http.h>
#import <wax/wax_json.h>
#import <wax/wax_xml.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *content;


- (IBAction)hideKeyboard:(id)sender;
- (IBAction)loadLua:(id)sender;
- (IBAction)run:(id)sender;

@end
