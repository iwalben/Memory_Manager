//
//  CCProxy.m
//  Memory_manager
//
//  Created by walben on 2019/9/29.
//  Copyright © 2019 LB. All rights reserved.
//

#import "CCProxy.h"

@implementation CCProxy

+(instancetype)initWithTarget:(id)target
{
    CCProxy * tar = [CCProxy alloc];
    tar.target = target ;
    return tar ;
}

- (nullable NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    invocation.target = self.target ;
    [invocation invoke];
}



@end
