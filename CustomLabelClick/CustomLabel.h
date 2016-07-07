//
//  CustomLabel.h
//  CustomLabelClick
//
//  Created by Zin_戦 on 16/7/7.
//  Copyright © 2016年 Zin戦壕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomLabel : UILabel
{
    UIControl *_actionView;
    UIColor *_highlightedColor;
    BOOL _shouldUnderline;
}

@property (nonatomic, retain) UIColor *highlightedColor;
@property (nonatomic, assign) BOOL shouldUnderline;

- (void)setText:(NSString *)text andCenter:(CGPoint)center;
- (void)addTarget:(id)target action:(SEL)action;

@end
