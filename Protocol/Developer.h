//
//  Developer.h
//  Protocol
//
//  Created by Роман Приискалов on 23/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Patient.h"

@interface Developer : NSObject <Patient>

@property(strong, nonatomic) NSString* name;

@property(assign, nonatomic) CGFloat experience;

- (void) work;

@end