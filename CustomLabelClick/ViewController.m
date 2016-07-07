//
//  ViewController.m
//  CustomLabelClick
//
//  Created by Zin_戦 on 16/7/7.
//  Copyright © 2016年 Zin戦壕. All rights reserved.
//

#import "ViewController.h"
#import "CustomLabel.h"

@interface ViewController ()
{

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"已选了0";
    
    CustomLabel *label = [[CustomLabel alloc] initWithFrame:CGRectMake(50, 200, 80, 30)];
    [label setBackgroundColor:[UIColor clearColor]];
    // [label setBackgroundColor:[UIColor yellowColor]];
    [label setTextColor:[UIColor blueColor]];
    [label setBackgroundColor:[UIColor yellowColor]];
    label.highlightedColor = [UIColor redColor];
    label.shouldUnderline = NO;
    label.text = @"点大爷";
//    [label setText:str andCenter:CGPointMake(200, 240)];
    [label addTarget:self action:@selector(labelClicked)];
    [self.view addSubview:label];

    CustomLabel *label2 = [[CustomLabel alloc] initWithFrame:CGRectMake(100, 100, 80, 40)];
    [label2 setBackgroundColor:[UIColor clearColor]];
    // [label setBackgroundColor:[UIColor yellowColor]];
    [label2 setTextColor:[UIColor blueColor]];
    [label2 setBackgroundColor:[UIColor yellowColor]];
    label2.highlightedColor = [UIColor redColor];
    label2.shouldUnderline = YES;
    label2.text = str;
    label2.textAlignment = NSTextAlignmentCenter;
    [label2 setText:str andCenter:CGPointMake(40, 40)];
    [label2 addTarget:self action:@selector(labelClicked)];
    [self.view addSubview:label2];
    
}

- (void)labelClicked
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Clicked!" message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alertView show];

}


@end
