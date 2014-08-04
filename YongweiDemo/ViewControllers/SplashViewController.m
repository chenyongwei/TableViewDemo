//
//  SplashViewController.m
//  YongweiDemo
//
//  Created by Yongwei.Chen on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "SplashViewController.h"
#import "CountryViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addLoadingIndicator];
    
    // the signal of cache
    BFTaskCompletionSource *cacheCS = [BFTaskCompletionSource taskCompletionSource];
    [[CountryDataManager manager] cacheCountry:cacheCS];
    // cache done
    [cacheCS.task continueWithExecutor:[BFExecutor mainThreadExecutor] withBlock:^id(BFTask *task) {
        [self removeLoadingIndicator];

        if (task.error) {
            [self showErrorAlert:@"Network error, please check your connnection"];
        }
        else {
            // show country item list view controler if data query back
            UIViewController *countryVC = [[CountryViewController alloc] init];
            [self presentViewController:countryVC animated:YES completion:^{ }];
        }
        
        return nil; // Bolts syntax required a return
    }];
    
}



@end
