//
//  Developer.m
//  Protocol
//
//  Created by Роман Приискалов on 23/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//
#import "Developer.h"

@implementation Developer

- (void) work{
    
}

#pragma mark - Patient

-(BOOL) areYouOk{
    BOOL a = arc4random() % 2;
    NSLog(@"Is developer ok? ans - %@ is %@", self.name, a ? @"NO" : @"YES");
    return a;
}
-(void) takePill{
    NSLog(@"Developer %@ take a pill", self.name);
}
-(void) makeShot{
    NSLog(@"Developer %@ make a shot", self.name);
}
@end