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
        if (_yearsEmployed != yearsEmployed) {
            [yearsEmployed retain];
            [_yearsEmployed release];
            _yearsEmployed = yearsEmployed;
        }
        if (_managerName != managerName) {
            [managerName retain];
            [_managerName release];
            _managerName = managerName;
        }
        if (_email != email) {
            [email retain];
            [_email release];
            _email = email;
        }
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        
    }
    return self;
    
}


-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    if (self) {
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        
        
        
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)aCoder{
        [aCoder encodeObject:self.firstName forKey:@"firstName"];
        [aCoder encodeObject:self.lastName forKey:@"lastName"];
        [aCoder encodeObject:self.age forKey:@"age"];
        [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
        [aCoder encodeObject:self.managerName forKey:@"managerName"];
        [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
        [aCoder encodeObject:self.email forKey:@"email"];
}

-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
    
}

@end
