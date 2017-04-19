//
//  EmployeeDatabase.h
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/18/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeDatabase : NSObject

//singleton
+(instancetype)shared;

-(NSInteger)count;
-(NSArray *)allEmployees;
-(Employee *)employeeAtIndex:(int)index;

-(void)add:(Employee *)employee;
-(void)remove:(Employee *)employee;
-(void)removeEmployeeAtIndex:(int)index;
-(void)removeAllEmployees;

@end
