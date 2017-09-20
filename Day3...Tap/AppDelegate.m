//
//  AppDelegate.m
//  Day3...Tap
//
//  Created by Student P_04 on 14/06/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.myViewController=[[UIViewController alloc]init];
    self.window.rootViewController=self.myViewController;
    self.window.backgroundColor=[UIColor yellowColor];
    self.count=0;
    self.plusButton=[[UIButton alloc]initWithFrame:CGRectMake(50, 400, 330, 60)];
    self.plusButton.backgroundColor=[UIColor redColor];
    [self.plusButton setTitle:@"Plus" forState:UIControlStateNormal];
    self.plusButton.titleLabel.font=[UIFont boldSystemFontOfSize:30];
    [self.plusButton addTarget:self action:@selector(plusOperation) forControlEvents:UIControlEventTouchUpInside];
    [self.plusButton.layer setBorderColor:[UIColor blackColor].CGColor];
    [self.plusButton.layer setBorderWidth:5];
    self.plusButton.layer.cornerRadius=10;
    [self.myViewController.view addSubview:self.plusButton];
    
    self.resetButton=[[UIButton alloc]initWithFrame:CGRectMake(50, 500, 330, 60)];
    self.resetButton.backgroundColor=[UIColor redColor];
    [self.resetButton setTitle:@"Reset" forState:UIControlStateNormal];
    self.resetButton.titleLabel.font=[UIFont boldSystemFontOfSize:30];
    [self.resetButton addTarget:self action:@selector(resetOperation) forControlEvents:UIControlEventTouchUpInside];
    [self.resetButton.layer setBorderColor:[UIColor blackColor].CGColor];
    [self.resetButton.layer setBorderWidth:5];
    self.resetButton.layer.cornerRadius=10;
    [self.myViewController.view addSubview:self.plusButton];
    [self.myViewController.view addSubview:self.resetButton];
    
    self.myLabel=[[UILabel alloc]initWithFrame:CGRectMake(180, 100, 330, 80)];
    
    self.myLabel.text=@"0";
    [self.myLabel setTextColor:[UIColor blueColor]];
    self.myLabel.font=[UIFont boldSystemFontOfSize:80];
    [self.myViewController.view addSubview:self.myLabel];
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)plusOperation
{
    self.myLabel.text=[NSString stringWithFormat:@"%d",++self.count];
   /* if(self.plusButton.state==UIControlStateHighlighted)
        {
            while (1) {
                
                self.myLabel.text=[NSString stringWithFormat:@"%d",++self.count];
            }
        }*/
}
-(void)resetOperation
{
    self.count=0;
    self.myLabel.text=@"0";
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
