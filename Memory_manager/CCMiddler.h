//
//  CCMiddler.h
//  Memory_manager
//
//  Created by walben on 2019/9/29.
//  Copyright © 2019 LB. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CCMiddler : NSObject
+(instancetype)initWithMiddler:(id)middler;
@property (nonatomic ,weak) id target ;
@end

NS_ASSUME_NONNULL_END
