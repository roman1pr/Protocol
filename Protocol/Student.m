//
//  my.m
//  Protocol
//
//  Created by Роман Приискалов on 23/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) study{
    
}

// разделение для верха

#pragma mark - Patient

-(BOOL) areYouOk{
    BOOL a = arc4random() % 2;
    NSLog(@"Is student ok? ans - %@ is %@", self.name, a ? @"NO" : @"YES");
    return a;
}
-(void) takePill{
     NSLog(@"Student %@ take a pill", self.name);
}
-(void) makeShot{
    NSLog(@"Student %@ make a shot", self.name);
}

-(NSString*) HowIsYourFather{
    return @"good";
}

@end