//
//  JSFile.h
//  Demo5_JS_FilesList
//
//  Created by  江苏 on 16/3/13.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSFile : NSObject<NSCoding>
@property(nonatomic,copy)NSString* name;
@property(nonatomic,copy)NSString* path;
@property(nonatomic)int length;
@end
