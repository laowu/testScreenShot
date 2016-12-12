//
//  AutoSizeContentViewController.m
//  testScreen
//
//  Created by 白大卫 on 16/12/12.
//  Copyright © 2016年 bdw. All rights reserved.
//

#import "AutoSizeContentViewController.h"

#import "DHSmartScreenshot.h"
#import "UIScrollView+DHSmartScreenshot.h"
#import "UIView+DHSmartScreenshot.h"
#import "ScreenShotViewController.h"


@interface AutoSizeContentViewController ()
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *constraitWeight;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *constraitHeight;
@property (strong, nonatomic) IBOutlet UIImageView *imgContent;

@property (nonatomic, weak, nullable) id <screenShotProtocol> delegate;

@end

@implementation AutoSizeContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)updateViewConstraints{
    [super updateViewConstraints];
    self.constraitWeight.constant = CGRectGetWidth([UIScreen mainScreen].bounds);
    self.constraitHeight.constant = self.imgContent.intrinsicContentSize.height;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if([segue.identifier isEqual: @"normalShotSegue"])
    {
        
        //UIImage *wholeShot = [(UIView*)(self.scrollView.subviews.firstObject) screenshot];
        UIImage * normalScreenshot = self.scrollView.screenshotOfVisibleContent;
        ScreenShotViewController *dst = (ScreenShotViewController *)segue.destinationViewController;
        self.delegate = dst;
       [dst getScreenShoot: normalScreenshot];
        //[dst getScreenShoot:wholeShot];
        
    }else if([segue.identifier isEqualToString:@"fullShotSegue"])
    {
    
        UIImage *wholeShot = [(UIView*)(self.scrollView.subviews.firstObject) screenshot];
        //UIImage * normalScreenshot = self.scrollView.screenshotOfVisibleContent;
        ScreenShotViewController *dst = (ScreenShotViewController *)segue.destinationViewController;
        self.delegate = dst;
        //[dst getScreenShoot: normalScreenshot];
        [dst getScreenShoot:wholeShot];
    }

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
