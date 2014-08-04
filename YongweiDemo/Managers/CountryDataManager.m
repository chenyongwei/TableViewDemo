//
//  CountryDataManager.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "CountryDataManager.h"
#import "AFHTTPRequestOperationManager.h"
#import "MTLJSONAdapter.h"

@implementation CountryDataManager

static YWCountry *_countryCache;

+(instancetype)manager
{
    static CountryDataManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        manager = [[CountryDataManager alloc] init];
    });
    
    return manager;
}

-(void)cacheCountry:(BFTaskCompletionSource *)cs
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    // depend on server response content types
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", @"application/json", nil];
    
    [manager GET:COUNTRYDATA_URLSTR parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSError *error;
        _countryCache = [MTLJSONAdapter modelOfClass:[YWCountry class] fromJSONDictionary:responseObject error:&error];
        if (error) {
            [cs setError:error];
        }
        else {
            [cs setResult:_countryCache];
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        [cs setError:error];
    }];
}

/**
 Get country data from cache, very quickly.
 */
-(YWCountry *)country
{
    return _countryCache;
}

@end
