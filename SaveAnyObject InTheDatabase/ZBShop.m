

#import "ZBShop.h"

@implementation ZBShop

// 归档
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    // 注意:price是Double类型的，所以方法名必须写成encodeDouble,否则报错
    [aCoder encodeDouble:self.price forKey:@"price"];
}

// 解档
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self != nil) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.price = [aDecoder decodeDoubleForKey:@"price"];
    }
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"%@ %f",self.name,self.price];
}

@end
