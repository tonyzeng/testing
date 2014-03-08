//
//  ViewController.m
//  OpenURL
//
//  Created by zengyi on 14-3-8.
//  Copyright (c) 2014年 zengyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    double currentslidervalue;

}


@end

@implementation ViewController
@synthesize slider;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   currentslidervalue = self.slider.value;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showalert:(id)sender {
    
    NSString *message_value=[NSString stringWithFormat:@"current value of bar is %f",currentslidervalue];
    [[[UIAlertView alloc]initWithTitle:@"Title_la" message:message_value delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil,nil]show];
}

- (IBAction)sliderMoved:(id)sender {
    //UISlider *slider=(UISlider*)sender;
    currentslidervalue=slider.value;
    NSLog(@"current value is: %f",currentslidervalue);
    
}
@end

