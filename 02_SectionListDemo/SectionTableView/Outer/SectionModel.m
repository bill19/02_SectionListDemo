//
//  SectionModel.m
//  02_SectionListDemo
//
//  Created by sunhao on 15-7-22.
//  Copyright (c) 2015年 SH. All rights reserved.
//

#import "SectionModel.h"

@implementation SectionModel

- (void)makeModel:(SectionType)type{

    _type = type;
    switch (type) {
        case SectionTypeRead:
            NSLog(@"SectionTypeRead");
            break;
            
        case SectionTypeListen:
            NSLog(@"SectionTypeListen");
            break;
            
        case SectionTypeWrite:
            NSLog(@"SectionTypeWrite");
            break;
 
        default:
            break;
    }
}


+ (instancetype)SectionModelWithTypr:(SectionType)type
{
    SectionModel * model = [[SectionModel alloc]init];
    
    return model;
}

@end
