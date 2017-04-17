//
//  ViewController.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"//importing the person class
#import "ViewControllerDataSource.h"
#import "Employee.h"
#import "NSString+Array.h"

//no * because it is not a reference, it is a value type
static int gMoveNumber = 10;//static so that it will show on here only globally

@interface ViewController () <ViewControllerDataSource>//this is conforming to the protocol aka <>

@end

@implementation ViewController
//void is the return type
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self requiredNumberForEachItem:100];//this is using the method made
    
    Person *jay = [[Person alloc] init];//returns a memory place and is initialized
    Employee *jayB = [[Employee alloc]init];
    
    [jay setFirstName:@"Jay"];
    [jay setLastName:@"Balderas"];
    [jay setAge:@27];
    
    [jayB setEmployeeNumber:@1234];
    [jayB setYearsEmployed:@2];
    [jayB setManagerName:@"Joe"];
    
    //                          returning instance to "personName"
//    NSString *personName = [adam name];//this is the getter that is returning a value 
    
    [jay walk];
    [Person sayHello];
    NSString *str = @"Hello world";
    
    NSLog(@"string to array: %@",str.stringToArray);
    NSLog(@"revered string: %@", [NSString reversedString:str]);

    NSLog(@"%i", gMoveNumber);
    
}
//autocompletes only if you conform to the protocol
-(void)requiredNumberForEachItem:(int)number{

}


@end
