//
//  JSFile.m
//  Demo5_JS_FilesList
//
//  Created by  江苏 on 16/3/13.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "JSFile.h"

@implementation JSFile
- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.path forKey:@"path"];
    [aCoder encodeInt:self.length forKey:@"length"];
}
- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    self=[super init];
    if (self) {
        self.name=[aDecoder decodeObjectForKey:@"name"];
        self.path=[aDecoder decodeObjectForKey:@"path"];
        self.length=[aDecoder decodeIntForKey:@"length"];
    }
    return self;
}
@end
