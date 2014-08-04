//
//  CountryDataManager.h
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YWCountry.h"
#import "BFTaskCompletionSource.h"

@interface CountryDataManager : NSObject

+(instancetype)manager;

/**
 cache remote json into local static object
 could accept argument like country_id to cache special country by requirement
 */
-(void)cacheCountry:(BFTaskCompletionSource *)cs;
-(YWCountry *)country;

@end
