//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Sofia Knezevic on 2017-02-20.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGesture;
@property (nonatomic, assign) float startPoint;

@end
