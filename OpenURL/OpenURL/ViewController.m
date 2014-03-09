//
//  ViewController.m
//  OpenURL
//
//  Created by zengyi on 14-3-8.
//  Copyright (c) 2014年 zengyi. All rights reserved.
//

#import "ViewController.h"
#import "AboutMe_ViewController_OpenURL.h"
@interface ViewController ()

{
    int currentslidervalue;
    int targetValue;

}


@end

@implementation ViewController
@synthesize slider;
@synthesize targetLabel;

//self-defined function-----begining------//
//function1
-(void) startNewRound{
    
    targetValue=1+(arc4random()%100);
    self.slider.value=88;
    //self.slider.value=1+(arc4random()%100);
    currentslidervalue=self.slider.value;
   // [self updateLabel];
}
//function2
-(void) updateLabel{
    self.targetLabel.text=[NSString stringWithFormat:@"T= %d",targetValue];
}
//self-defined function2-----end---------//


//system functions--------beginning-----------------//
//function 1
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self startNewRound];
}
//function 2
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//system functions---------end----------------//
- (IBAction)showalert:(id)sender {
    

    NSString *message_value_current_target=[NSString stringWithFormat:@"current value of bar is %d, target value is %d",currentslidervalue,targetValue];
    [[[UIAlertView alloc]initWithTitle:@"Title_la" message:message_value_current_target delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil,nil]show];
    [self startNewRound];
    [self updateLabel];

}

- (IBAction)sliderMoved:(id)sender {
    //UISlider *slider=(UISlider*)sender;
    currentslidervalue=round(slider.value);
    NSLog(@"current value is: %@",self.targetLabel.text);
    
}
- (IBAction)showInfo:(id)sender {
    
    AboutMe_ViewController_OpenURL *controller=[[AboutMe_ViewController_OpenURL alloc]initWithNibName:@"AboutMe_ViewController_OpenURL" bundle:nil];
    controller.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
    
}




























@end

