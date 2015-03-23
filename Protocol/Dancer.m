//
//  dancer.m
//  Protocol
//
//  Created by Роман Приискалов on 23/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void) dance{
    
}

#pragma mark - Patient

-(BOOL) areYouOk{
    BOOL a = arc4random() % 2;
    NSLog(@"Is dancer ok? ans - %@ is %@", self.name, a ? @"NO" : @"YES");
    return a;
}

-(void) takePill{
     NSLog(@"Dancer %@ take a pill", self.name);
}
-(void) makeShot{
    NSLog(@"Dancer %@ make a shot", self.name);
}

@end