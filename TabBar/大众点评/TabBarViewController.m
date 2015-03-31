//
//  TabBarViewController.m
//  大众点评
//
//  Created by qianfeng on 15/3/30.
//  Copyright (c) 2015年 吴志坤. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomePageViewController.h"
#import "DiscoverViewController.h"
#import "GroupViewController.h"
#import "MainViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

+ (UIViewController *)creatTabBarController
{
    TabBarViewController *tabCon = [[TabBarViewController alloc] init];
    //tabBar的背景颜色，背景图片
    tabCon.tabBar.tintColor = [UIColor colorWithRed:246/255.0 green:81/255.0 blue:26/255.0 alpha:1];
    //tabCon.tabBar.backgroundImage = [UIImage imageNamed:];
    
    //设置标题与图像
    
    NSArray *images = @[@"home_footbar_icon_dianping@2x", @"home_footbar_icon_group@2x", @"home_footbar_icon_found@2x", @"home_footbar_icon_my@2x"];
    NSArray *hightLightImage = @[@"home_footbar_icon_dianping_pressed@2x", @"home_footbar_icon_group_pressed@2x", @"home_footbar_icon_found_pressed@2x", @"home_footbar_icon_my_pressed@2x"];
    
    NSArray *name = @[@"首页", @"团购", @"发现", @"我的"];
    
    //添加元素
    HomePageViewController *home = [[HomePageViewController alloc] init];
    UINavigationController *one = [[UINavigationController alloc] initWithRootViewController:home];
    [one.navigationBar setBackgroundImage:[UIImage imageNamed:@"yy_calendar_chosen@2x"] forBarMetrics:UIBarMetricsDefault];
    
    GroupViewController *group = [[GroupViewController alloc] init];
    UINavigationController *two = [[UINavigationController alloc] initWithRootViewController:group];
    
    DiscoverViewController *discover = [[DiscoverViewController alloc] init];
    UINavigationController *three = [[UINavigationController alloc] initWithRootViewController:discover];
    MainViewController *main = [[MainViewController alloc] init];
    UINavigationController *four = [[UINavigationController alloc] initWithRootViewController:main];
    NSArray *tabBarCons = @[one, two, three, four];
    tabCon.viewControllers = tabBarCons;
    
    for (int i = 0; i < 4; i++) {
        
        
        //添加图片
        UIImage *image = [[UIImage imageNamed:images[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage *HLimage = [[UIImage imageNamed:hightLightImage[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:name[i] image:image selectedImage:HLimage];
        
        [tabBarCons[i] setTabBarItem:tabBarItem];
    }
    
    
    
          return tabCon;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
