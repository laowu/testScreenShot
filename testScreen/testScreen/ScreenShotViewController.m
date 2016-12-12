//
//  ScreenShotViewController.m
//  testScreen
//
//  Created by 白大卫 on 16/12/12.
//  Copyright © 2016年 bdw. All rights reserved.
//

#import "ScreenShotViewController.h"

@interface ScreenShotViewController ()
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *constantWeight;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *constantHeight;
@property (strong, nonatomic) IBOutlet UIImageView *imgScreenShot;
@property (strong,nonatomic) UIImage *imgShot;
@end



@implementation ScreenShotViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //_imgScreenShot.image = [UIImage imageNamed:@"a.jpeg"];
    _imgScreenShot.image = _imgShot;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)getScreenShoot:(UIImage *)shootImage
{

    self.imgShot = shootImage;
}


-(void)updateViewConstraints
{
    
    [super updateViewConstraints];
    self.constantHeight.constant = self.imgScreenShot.intrinsicContentSize.height;
    self.constantWeight.constant = self.imgScreenShot.intrinsicContentSize.width;
    
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
