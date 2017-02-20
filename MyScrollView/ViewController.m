//
//  ViewController.m
//  MyScrollView
//
//  Created by Sofia Knezevic on 2017-02-20.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController () <UIScrollViewDelegate>

@property (nonatomic, strong) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *newView = [[UIView alloc] initWithFrame:self.view.frame];
//    [self.view addSubview:newView];
    
    self.scrollView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    
    self.scrollView.contentSize = self.view.frame.size;
    
    [self.view addSubview:self.scrollView];
    
    //red view
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.scrollView addSubview:redView];
    
    //green view
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:greenView];
    
    //blue view
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:blueView];
    
    //yellow view
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.scrollView addSubview:yellowView];
    
}


//
//- (void)viewDidAppear:(BOOL)animated
//{
//    
//    [super viewDidAppear:animated];
//    
//    CGRect frame = self.view.bounds;
//    frame.origin.y += 100.0f;
//    self.view.bounds = frame;
//    
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
