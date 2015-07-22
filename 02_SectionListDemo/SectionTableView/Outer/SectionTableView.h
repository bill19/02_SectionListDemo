//
//  SectionTableView.h
//  02_SectionListDemo
//
//  Created by sunhao on 15-7-22.
//  Copyright (c) 2015年 SH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SectionTableView : UIView


/**
 * 提供一个唯一入口，目的是为了更好的控制程序运行
 */
+ (instancetype)sectionTableViewWithFrame: (CGRect)frame;


/**
 *sectionarray存放sectionModel对象
 */

- (void)reloadDataWithSectionArray:(NSArray *)sectionArray;
@end
