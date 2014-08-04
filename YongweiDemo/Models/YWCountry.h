//
//  YWCountry.h
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"

@interface YWCountry : MTLModel <MTLJSONSerializing>

@property (readonly, nonatomic, copy) NSString *title;
@property (readonly, nonatomic, strong) NSArray /* array of YWcountryItem */ *items;

@end
