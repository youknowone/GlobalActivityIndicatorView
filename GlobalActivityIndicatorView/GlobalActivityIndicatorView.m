//
//  GlobalActivityIndicatorView.m
//  GlobalActivityIndicatorView
//
//  Created by Jeong YunWon on 2015. 4. 21..
//  Copyright (c) 2015년 youknowone.org. All rights reserved.
//

#import "GlobalActivityIndicatorView.h"

_UIAGlobalActivityIndicatorView *_UIAGlobalActivityIndicatorViewSharedObject = nil;

@implementation _UIAGlobalActivityIndicatorView

+ (void)initialize {
    if (self == [_UIAGlobalActivityIndicatorView class]) {
        _UIAGlobalActivityIndicatorViewSharedObject = [[self alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        _UIAGlobalActivityIndicatorViewSharedObject.hidesWhenStopped = YES;

        UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(.0, .0, 120, 120)];
        [backgroundView setBackgroundColor:[UIColor lightGrayColor]];
        backgroundView.alpha = 0.6;
        backgroundView.layer.cornerRadius = 8;
        backgroundView.clipsToBounds = YES;
        _UIAGlobalActivityIndicatorViewSharedObject.backgroundView = backgroundView;
    }
}

+ (instancetype)globalActivityIndicatorView {
    return _UIAGlobalActivityIndicatorViewSharedObject;
}

- (void)startAnimating {
    UIWindow *mainWindow = [UIApplication sharedApplication].windows[0];
    if (self.superview != mainWindow) {
        CGSize windowSize = mainWindow.bounds.size;
        self.center = CGPointMake(windowSize.width / 2, windowSize.height / 2);
        [mainWindow addSubview:self];
    }
    if (self.backgroundView) {
        CGFloat alpha = self.backgroundView.alpha;
        self.backgroundView.alpha = .0;
        self.backgroundView.center = self.center;
        [self.superview insertSubview:self.backgroundView belowSubview:self];
        [UIView animateWithDuration:0.26 animations:^(void) {
            self.backgroundView.alpha = alpha;
        }];
    }
    [super startAnimating];
}

- (void)stopAnimating {
    if (self.backgroundView) {
        [self.backgroundView removeFromSuperview];
    }
    [super stopAnimating];
}

@end


@implementation UIActivityIndicatorView (GlobalActivityIndicatorView)

+ (_UIAGlobalActivityIndicatorView *)globalActivityIndicatorView {
    return [_UIAGlobalActivityIndicatorView globalActivityIndicatorView];
}

@end