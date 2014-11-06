//
//  WMenuViewController.m
//  Demo_Sliding_Menu
//
//  Created by johnny on 14-11-6.
//  Copyright (c) 2014年 johnny. All rights reserved.
//

#import "WMenuViewController.h"
#import "UIViewController+ECSlidingViewController.h"
#import "WHomeViewController.h"
#import "WDetailViewController.h"

@interface WMenuViewController ()

@end

@implementation WMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.view endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *item1 = [[UIButton alloc] init];
    [item1 setFrame: CGRectMake(30, 100, 100, 60)];
    item1.backgroundColor = [UIColor redColor];
    
    [item1 addTarget:self action:@selector(menuButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:item1];
}

- (IBAction)menuButtonTapped:(id)sender {
    
    self.slidingViewController.topViewController.view.layer.transform = CATransform3DMakeScale(1, 1, 1);
    WDetailViewController *detailController = [[WDetailViewController alloc] init];
//    self.slidingViewController.topViewController = detailController;
//    [self.navigationController pushViewController:detailController animated:YES];
    [self.slidingViewController.navigationController pushViewController:detailController animated:YES];
    
//    [self.slidingViewController resetTopViewAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
