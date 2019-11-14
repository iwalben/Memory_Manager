//
//  CCMiddler.m
//  Memory_manager
//
//  Created by walben on 2019/9/29.
//  Copyright © 2019 LB. All rights reserved.
//

#import "CCMiddler.h"
#import "objc/runtime.h"

@implementation CCMiddler

+(instancetype)initWithMiddler:(id)middler
{
    CCMiddler * mid= [[CCMiddler alloc]init];
    mid.target = middler ;
    return mid ;
}


//进行消息转发
-(id)forwardingTargetForSelector:(SEL)aSelector
{
    return self.target ;
}

@end
