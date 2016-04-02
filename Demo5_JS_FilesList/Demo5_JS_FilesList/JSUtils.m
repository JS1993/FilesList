//
//  JSUtils.m
//  Demo5_JS_FilesList
//
//  Created by  江苏 on 16/3/13.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSUtils.h"
#import "JSFile.h"
@implementation JSUtils
+(NSMutableArray*)getFilesDiretoryPath:(NSString*)path{
    NSMutableArray* files=[NSMutableArray array];
    NSFileManager* fm=[NSFileManager defaultManager];
    NSArray* fileNames=[fm contentsOfDirectoryAtPath:path error:nil];
    for (NSString* fileName in fileNames) {
        JSFile* file=[[JSFile alloc]init];
        file.name=fileName;
        file.path=[path stringByAppendingPathComponent:fileName];
        NSFileHandle* fh=[NSFileHandle fileHandleForReadingAtPath:file.path];
        file.length=(int)[fh seekToEndOfFile];
        [files addObject:file];
    }
    return files;
}
@end
