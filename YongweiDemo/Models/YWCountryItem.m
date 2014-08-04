//
//  YWCountryItem.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "YWCountryItem.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

@implementation YWCountryItem


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"imageURL" : @"imageHref"
             };
}

+ (NSValueTransformer *)imageURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end
