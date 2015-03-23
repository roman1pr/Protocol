//
//  Dancer.h
//  Protocol
//
//  Created by Роман Приискалов on 23/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Dancer : NSObject <Patient>

@property(strong, nonatomic)    NSString* name;
@property(strong, nonatomic) NSString* favouriteDance;

- (void) dance;

@end