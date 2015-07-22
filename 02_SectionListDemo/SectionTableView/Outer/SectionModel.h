//
//  SectionModel.h
//  02_SectionListDemo
//
//  Created by sunhao on 15-7-22.
//  Copyright (c) 2015年 SH. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  1.一个分组对应一个SectionModel
 *  2.分株类型用枚举
 *
 *
 *
 */

typedef NS_ENUM(NSInteger, SectionType){

    SectionTypeRead,
    SectionTypeListen,
    SectionTypeWrite
};


@interface SectionModel : NSObject

@property(nonatomic,assign,readonly)SectionType type;
/**
 *  分组显示title
 */
@property(nonatomic,copy)NSString *sectionTitle;
/**
 *  分组相应cell的数据源
 */
@property(nonatomic,strong)NSArray * dataArray;

/**
 *  一个分组对应一个model
 *  创建的这个分组有几个cell
 */
@property(nonatomic,assign)NSInteger countCell;
/**
 *  根据type 创建相应的类型
 */

+ (instancetype)SectionModelWithTypr:(SectionType)type;




@end
