//
//  ViewController.h
//  OpenURL
//
//  Created by zengyi on 14-3-8.
//  Copyright (c) 2014年 zengyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (IBAction)showalert:(id)sender;

- (IBAction)sliderMoved:(id)sender;
@property (strong, nonatomic) IBOutlet UISlider *slider;

@property (strong, nonatomic) IBOutlet UILabel *targetLabel;

- (IBAction)showInfo:(id)sender;

@end
