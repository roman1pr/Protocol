//
//  Patient.h
//  Protocol
//
//  Created by Роман Приискалов on 23/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Patient <NSObject>

@optional
@property(strong, nonatomic)    NSString* name;

@required
-(BOOL) areYouOk;
-(void) takePill;
-(void) makeShot;

@optional
-(NSString*) HowIsYourFather;

@end