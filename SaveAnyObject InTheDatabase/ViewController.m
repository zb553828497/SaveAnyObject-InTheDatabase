//
//  ViewController.m
//  SaveAnyObject InTheDatabase
//
//  Created by zhangbin on 16/6/20.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "ViewController.h"
#import "ZBShop.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self AddShops];
    [self ReadShops];

}
// 添加商品
-(void)AddShops{
    
    NSMutableArray *shops = [NSMutableArray array];
    for (int i = 0; i < 5;i++) {
        ZBShop *shop = [[ZBShop alloc] init];
        shop.name = [NSString stringWithFormat:@"商品--%d",i];
        shop.price = arc4random()%1000;
        [shops addObject:shop];
    }
    //归档
    [NSKeyedArchiver archiveRootObject:shops toFile:@"/Users/zhangbin/Desktop/shops.data"];
}
// 读取商品
-(void)ReadShops{
    // 解档
    NSMutableArray *shops = [NSKeyedUnarchiver unarchiveObjectWithFile:@"/Users/zhangbin/Desktop/shops.data"];
    NSLog(@"%@",shops);// 打印全部的元素
    NSLog(@"%@",[shops subarrayWithRange:NSMakeRange(1, 2)]);// 从下标为1的元素开始，截取两个元素下来输出
}

@end
