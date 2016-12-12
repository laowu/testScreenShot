//
//  AutoSizeContentViewController.h
//  testScreen
//
//  Created by 白大卫 on 16/12/12.
//  Copyright © 2016年 bdw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoSizeContentViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;




@end


@protocol screenShotProtocol <NSObject>

@required
-(void) getScreenShoot:(UIImage*)shootImage;

@end