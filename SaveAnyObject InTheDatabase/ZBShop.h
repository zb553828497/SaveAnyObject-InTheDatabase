//
//  ZBShop.h
//  SaveAnyObject InTheDatabase
//
//  Created by zhangbin on 16/6/20.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZBShop : NSObject<NSCoding>
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)double price;
@end
