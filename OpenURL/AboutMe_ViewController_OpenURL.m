//
//  AboutMe_ViewController_OpenURL.m
//  OpenURL
//
//  Created by zengyi on 14-3-9.
//  Copyright (c) 2014年 zengyi. All rights reserved.
//

#import "AboutMe_ViewController_OpenURL.h"

@interface AboutMe_ViewController_OpenURL ()

@end

@implementation AboutMe_ViewController_OpenURL

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender {

    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];

}
@end
