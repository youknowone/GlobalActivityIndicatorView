//
//  GlobalActivityIndicatorView.h
//  GlobalActivityIndicatorView
//
//  Created by Jeong YunWon on 2015. 4. 21..
//  Copyright (c) 2015년 youknowone.org. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for GlobalActivityIndicatorView.
FOUNDATION_EXPORT double GlobalActivityIndicatorViewVersionNumber;

//! Project version string for GlobalActivityIndicatorView.
FOUNDATION_EXPORT const unsigned char GlobalActivityIndicatorViewVersionString[];


@class _UIAGlobalActivityIndicatorView;
@interface UIActivityIndicatorView (GlobalActivityIndicatorView)

+ (_UIAGlobalActivityIndicatorView *)globalActivityIndicatorView;

@end


@interface _UIAGlobalActivityIndicatorView: UIActivityIndicatorView

@property(nonatomic,strong) UIView *backgroundView;

@end
