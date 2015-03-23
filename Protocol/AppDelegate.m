//
//  AppDelegate.m
//  Protocol
//
//  Created by Роман Приискалов on 23/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Student.h"
#import "Dancer.h"
#import "Developer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Dancer *dancer1 = [[Dancer alloc] init];
    Developer *developer1 = [[Developer alloc] init];
    Student *student1 = [[Student alloc] init];
    Dancer *dancer2 = [[Dancer alloc] init];
    Student *student2 = [[Student alloc] init];
    
    NSArray *arr = [[NSArray alloc] initWithObjects:dancer1,developer1,student1,dancer2,student2, nil];
    
    dancer1.name = @"d1";
    dancer2.name = @"d1";
    developer1.name = @"dev1"; 
    student1.name = @"name1";
    student2.name = @"name2";
    
    
    for (id <Patient> obj in arr) {
        if ([obj conformsToProtocol:@protocol(Protocol)]) { // проверка подписи на прототкол
            NSLog(@"%@", obj.name);
            
            if ([obj respondsToSelector:@selector(HowIsYourFather)]) { // реализован  ли протокл
                NSLog(@"How is your Father -  \n%@", [obj HowIsYourFather]);
            }
            [obj areYouOk] ? [obj takePill] : [obj areYouOk] ? [obj makeShot] : 0;

        }
        
    }
    
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
