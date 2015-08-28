//
//  AppDelegate.m
//  zy_8_28_UIView
//
//  Created by 张天琦 on 15/8/28.
//  Copyright (c) 2015年 张天琦. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window  makeKeyAndVisible];
    
    UIView * containView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.window.bounds.size.width,self.window.bounds.size.height)];
    containView.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:containView];
    
    UILabel *userLabel = [[UILabel alloc]initWithFrame:CGRectMake(80, 140, 80, 30)];
    userLabel.text = @"用户名";
    [containView addSubview:userLabel];
    
    UILabel * passwordLable = [[UILabel alloc]initWithFrame:CGRectMake(80, 190, 150, 30)];
    passwordLable.text= @"密码";
    [containView addSubview:passwordLable];
    
    UITextField * textFiledOfuserName = [[UITextField alloc]initWithFrame:CGRectMake(140, 140, 150, 30)];
//    textFiledOfuserName.text = @"请输入用户名";  //不用这个
//    这个是提示的输入信息
    textFiledOfuserName.placeholder = @"请输入账号";
//    文本居中
    textFiledOfuserName.textAlignment = NSTextAlignmentCenter;
//    textFiledOfuserName.backgroundColor = [UIColor grayColor];
//    再次输入时自动清空
    textFiledOfuserName.clearsOnBeginEditing = YES;
    textFiledOfuserName.keyboardType =  UIKeyboardTypeNumberPad;// 这个是显示数字键盘
    textFiledOfuserName.returnKeyType = UIReturnKeyDefault;
    textFiledOfuserName.borderStyle = UITextBorderStyleRoundedRect;
    [containView addSubview:textFiledOfuserName];
    
    
    UITextField * TFOfPassord = [[UITextField alloc]initWithFrame:CGRectMake(140, 190, 150, 30)];
//    TFOfPassord.backgroundColor = [UIColor grayColor];
    TFOfPassord.placeholder = @"请输入密码";
    TFOfPassord.borderStyle = UITextBorderStyleRoundedRect;
    TFOfPassord.textAlignment = NSTextAlignmentCenter;
    //再次编辑 自动清空
    TFOfPassord.clearsOnBeginEditing = YES;
//    显示密文
    TFOfPassord.secureTextEntry = YES;
    [containView addSubview:TFOfPassord];
    
    
    UIButton * QueDing = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//                           alloc]initWithFrame:CGRectMake(100, 250, 80, 40)];
    QueDing.frame = CGRectMake(100, 250, 80, 40);
     [QueDing setTitle:@"确定" forState:UIControlStateNormal]; // 设置在什么状态下显示什么文字
    [QueDing setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    QueDing.showsTouchWhenHighlighted = NO;
//    QueDing.backgroundColor = [UIColor blackColor];
    [containView addSubview:QueDing];
    
    
    UIButton * QuXiao = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    QuXiao.frame = CGRectMake(170, 250, 80, 40);
//
    [QuXiao setTitle:@"取消" forState:UIControlStateNormal];
    [QuXiao setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [containView addSubview:QuXiao];
//    [QueDing setBackgroundImage:[UIImage imageNamed:@"TangYan.jpg"]];
//    QueDing.hidden = YES;
//    QueDing.alpha = .1;
//    NSMutableArray * arr = [NSMutableArray arrayWithArray:containView.subviews];
//    NSLog(@"%@",arr);
    
//    [containView exchangeSubviewAtIndex:0 withSubviewAtIndex:4];
//    [QueDing removeFromSuperview];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
