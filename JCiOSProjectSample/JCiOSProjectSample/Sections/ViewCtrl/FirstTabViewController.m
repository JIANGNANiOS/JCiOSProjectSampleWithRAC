//
//  FirstTabViewController.m
//  JCiOSProjectSample
//
//  Created by jimple on 14/7/10.
//  Copyright (c) 2014年 JimpleChen. All rights reserved.
//

#import "FirstTabViewController.h"
#import "AppDelegate+RootVC.h"

@interface FirstTabViewController ()

@property (nonatomic, weak) IBOutlet UIButton *changeToMainVCBtn;

@end

@implementation FirstTabViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)changeToMainVCBtn:(id)sender
{
    [(AppDelegate *)([UIApplication sharedApplication].delegate) setMainSideVCToRootVC];
}












@end
