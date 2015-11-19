//
//  MyTabBarController.m
//  git_learning
//
//  Created by 陈佳佳 on 15/11/19.
//  Copyright © 2015年 chenjiajia. All rights reserved.
//

#import "MyTabBarController.h"
#import "HomeViewController.h"
#import "MessageViewController.h"
#import "DiscoverViewController.h"
#import "ProfileViewController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    HomeViewController *hvc = [[HomeViewController alloc]init];
    [self addOneChildVc:hvc title:@"主页" imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected"];
    
    MessageViewController *mvc = [[MessageViewController alloc]init];
    [self addOneChildVc:mvc title:@"消息" imageName:@"tabbar_message_center" selectedImageName:@"tabbar_message_center_selected"];
    
    DiscoverViewController *dvc = [[DiscoverViewController alloc]init];
    [self addOneChildVc:dvc title:@"发现" imageName:@"tabbar_discover" selectedImageName:@"tabbar_discover_selected"];
    
    ProfileViewController *fvc = [[ProfileViewController alloc]init];
    [self addOneChildVc:fvc title:@"我" imageName:@"tabbar_profile" selectedImageName:@"tabbar_profile_selected"];
    
    
}

- (void)addOneChildVc:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    childVc.view.backgroundColor = RandomColor;
    childVc.tabBarItem.title = title;
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    if (iOS7) {
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    childVc.tabBarItem.selectedImage = selectedImage;
    
    [self addChildViewController:childVc];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
