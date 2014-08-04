//
//  YWCountryItem.h
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"

@interface YWCountryItem : MTLModel <MTLJSONSerializing>

@property (readonly, nonatomic, copy) NSString *title;
@property (readonly, nonatomic, copy) NSString *description;
@property (readonly, nonatomic, strong) NSURL *imageURL;

@end
