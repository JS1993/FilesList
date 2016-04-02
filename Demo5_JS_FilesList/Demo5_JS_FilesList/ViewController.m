//
//  ViewController.m
//  Demo5_JS_FilesList
//
//  Created by  江苏 on 16/3/13.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSFile.h"
#import "JSUtils.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray* files=[JSUtils getFilesDiretoryPath:@"/Users/jiangsu/Desktop/旅游"];
    NSMutableData* data=[NSMutableData data];
    NSKeyedArchiver* arch=[[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
    [arch encodeObject:files forKey:@"files"];
    [arch finishEncoding];
    [data writeToFile:@"/Users/jiangsu/Desktop/file" atomically:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
