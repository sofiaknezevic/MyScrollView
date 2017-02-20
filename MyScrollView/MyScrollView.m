//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Sofia Knezevic on 2017-02-20.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.userInteractionEnabled = YES;
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panScreen:)];
        [self addGestureRecognizer:_panGesture];
        _contentSize = frame.size;
        
        
    }
    return self;
}

-(IBAction)panScreen:(UIPanGestureRecognizer *)panGesture
{
    if ([panGesture state] == UIGestureRecognizerStateBegan) {
        self.startPoint = self.bounds.origin.y;
    }
    
    self.bounds = CGRectMake(self.bounds.origin.x, self.startPoint + [panGesture translationInView:self].y, self.bounds.size.width, self.bounds.size.height);
    
//    if(self.bounds.origin.y <= 0){
//        
//        self.bounds = CGRectMake(self.bounds.origin.x, 0, self.bounds.size.width, self.bounds.size.height);
//        
//    } else if (self.bounds.origin.y >= self.contentSize.height - [[UIScreen mainScreen] bounds].size.height) {
//        
//        self.bounds = CGRectMake(self.bounds.origin.x, self.contentSize.height - [[UIScreen mainScreen] bounds].size.height, self.bounds.size.width, self.bounds.size.height);
//        
//    }
    
}

@end
