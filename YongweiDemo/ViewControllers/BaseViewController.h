//
//  BaseViewController.h
//  YongweiDemo
//
//  Created by Yongwei on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BFTask.h"
#import "BFExecutor.h"
#import "CountryDataManager.h"

@interface BaseViewController : UIViewController

-(void)showErrorAlert:(NSString *)errorMsg;
-(void)addLoadingIndicator;
-(void)removeLoadingIndicator;

@end
