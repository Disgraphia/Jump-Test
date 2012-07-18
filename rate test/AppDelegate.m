//
//  AppDelegate.m
//  Scary Bosses
//
//  Created by Daniel Wood on 7/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "ScaryBossDoc.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    ScaryBossDoc *boss1 = [[ScaryBossDoc alloc] initWithTitle:@"Bowser" rating:3 thumbImage:[UIImage imageNamed:@"BowserThumb.jpg"] fullImage:[UIImage imageNamed:@"Bowser.jpg"]];
    ScaryBossDoc *boss2 = [[ScaryBossDoc alloc] initWithTitle:@"Dr. Robotnik" rating:2 thumbImage:[UIImage imageNamed:@"RobotnikThumb.png"] fullImage:[UIImage imageNamed:@"Robotnik.png"]];
    ScaryBossDoc *boss3 = [[ScaryBossDoc alloc] initWithTitle:@"Mecha Hitler" rating:5 thumbImage:[UIImage imageNamed:@"Mecha HitlerThumb.jpg"] fullImage:[UIImage imageNamed:@"Mecha Hitler.jpg"]];
    ScaryBossDoc *boss4 = [[ScaryBossDoc alloc] initWithTitle:@"Sephiroth" rating:4 thumbImage:[UIImage imageNamed:@"SephirothThumb.jpg"] fullImage:[UIImage imageNamed:@"Sephiroth.jpg"]];
    NSMutableArray *boss = [NSMutableArray arrayWithObjects:boss1, boss2, boss3, boss4, nil];
    
    UINavigationController * navController = (UINavigationController *) self.window.rootViewController;
    MasterViewController * masterController = [navController.viewControllers objectAtIndex:0];
    masterController.boss = boss;
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
