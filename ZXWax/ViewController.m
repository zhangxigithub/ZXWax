//
//  ViewController.m
//  ZXWax
//
//  Created by 张 玺 on 13-1-4.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "ViewController.h"
#import <wax/wax.h>

@implementation ViewController


- (IBAction)hideKeyboard:(id)sender {
    [_content resignFirstResponder];
}

- (IBAction)loadLua:(UIButton *)sender {
    NSString *URLString = [NSString stringWithFormat:@"http://zxapi.sinaapp.com/lua/?id=%d",sender.tag];
    NSURL *URL = [NSURL URLWithString:URLString];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSData *data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:nil
                                                     error:nil];
    NSString *contentString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    _content.text = contentString;
}

- (IBAction)run:(id)sender {
    [_content resignFirstResponder];
    NSString *content = _content.text;
    
    NSString *resourcePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    resourcePath = [resourcePath stringByAppendingPathComponent:@"zx.lua"];
    
    [content writeToFile:resourcePath atomically:NO encoding:NSUTF8StringEncoding error:nil];
    
    wax_end();
    wax_start("zx.lua", nil);
}

@end
