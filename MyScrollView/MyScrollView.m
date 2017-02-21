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

    CGFloat minY = 0;
    CGFloat maxY = self.frame.size.height;
    
    if ((self.startPoint + [panGesture translationInView:self].y)<0) {
        
        
        self.bounds = CGRectMake(self.bounds.origin.x,
                                 minY,
                                 self.contentSize.width,
                                 self.contentSize.height);
        
    }else if ((self.startPoint + [panGesture translationInView:self].y)>maxY){
        
        
        self.bounds = CGRectMake(self.bounds.origin.x,
                                 maxY,
                                 self.contentSize.width,
                                 self.contentSize.height);
        
    }else{
        
        
        self.bounds = CGRectMake(self.bounds.origin.x,
                                 self.startPoint + [panGesture translationInView:self].y,
                                 self.contentSize.width,
                                 self.contentSize.height);
        
    }



    
    

    
    
}

@end
