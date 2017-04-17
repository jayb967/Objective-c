//
//  EmployeeViewController.h
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


@interface Employee : Person

@property (strong, nonatomic) NSNumber *employeeNumber;
@property(strong, nonatomic) NSNumber *yearsEmployed;
@property(strong, nonatomic) NSString *managerName;

@end
