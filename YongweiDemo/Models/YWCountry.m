//
//  YWCountry.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "YWCountry.h"
#import "YWCountryItem.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

@implementation YWCountry

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"items" : @"rows"
             };
}

+ (NSValueTransformer *)itemsJSONTransformer {
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[YWCountryItem class]];
}

@end
