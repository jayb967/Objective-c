//
//  EmployeeViewController.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//
#import "Person.h"
#import "Employee.h"


@implementation Employee 

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                      manager:(NSString *)managerName
                           andEmail:(NSString *)email;{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    
    if (self) {
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _email = email;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        
    }
    return self;
    
}

-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
    
}

//NSNumber *_employeeNumber;
//NSNumber *_yearsEmployed;
//NSString *_managerName;


//dont need this here because I already declared it in the viewController.m///////////////////
//NSNumber *employeeNumber = [self employeeNumber];
//NSNumber *yearsEmployed = [self yearsEmployed];
//NSString *managerName = [self managerName];

@end
