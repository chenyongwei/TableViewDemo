//
//  BaseViewController.m
//  YongweiDemo
//
//  Created by Yongwei on 8/4/14.
//  Copyright (c) 2014 YW. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
{
    UIActivityIndicatorView *_loadingIndicator;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)addLoadingIndicator
{
    _loadingIndicator = ({
        UIActivityIndicatorView *ind = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:
                                        UIActivityIndicatorViewStyleWhite];
        ind.center = self.view.center;
        [ind setColor:[UIColor blackColor]];
        [ind setAlpha:0.6];
        [ind startAnimating];
        ind;
    });
    [self.view addSubview:_loadingIndicator];
}

-(void)removeLoadingIndicator
{
    [_loadingIndicator removeFromSuperview];
}

-(void)showErrorAlert:(NSString *)errorMsg
{
    UIAlertView * alert= [[UIAlertView alloc] initWithTitle:@"Error" message:errorMsg delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [alert show];
}

@end
