//
//  ViewControllerDataSource.h
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewControllerDataSource <NSObject>

@optional//makes them optionals
-(void)optionalNumberOfItems:(int)number;
-(void)something;

@required//makes them required
-(void)requiredNumberForEachItem:(int)number;


@end
