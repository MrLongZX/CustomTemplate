//___FILEHEADER___

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - 将数据中的和苹果关键字重复的字段，映射为新字段，在模型中存储 例：id ->idField
+ (NSDictionary *)modelCustomPropertyMapper
{
    return @{@"idField" : @[@"id"]};
}

#pragma mark - 将数组中的字典转模型
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
             @"<#数组字段名称#>" : <#模型类名#>.class,
             };
}

#pragma mark - 将数据中的某字段进行处理，产生新字段 例：title -> titleLayout
- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    // 处理过程。。。
    return YES;
}

@end
