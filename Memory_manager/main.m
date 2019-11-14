//
//  main.m
//  Memory_manager
//
//  Created by walben on 2019/9/29.
//  Copyright © 2019 LB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CCMiddler.h"
#import "CCProxy.h"
#import "ViewController.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        ViewController *vc = [[ViewController alloc] init];
        CCMiddler *proxy1 = [CCMiddler initWithMiddler:vc];
        CCProxy *proxy2 = [CCProxy initWithTarget:vc];
        
        NSLog(@"%d %d",
              [proxy1 isKindOfClass:[ViewController class]],
              [proxy2 isKindOfClass:[ViewController class]]);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
