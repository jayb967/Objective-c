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
#import "EmployeeDatabase.h"

//no * because it is not a reference, it is a value type
static int gMoveNumber = 10;//static so that it will show on here only globally

@interface ViewController () <ViewControllerDataSource>//this is conforming to the protocol aka <>

@end

@implementation ViewController
//void is the return type
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //this is how you would call a singleton
//        [[EmployeeDatabase shared] allEmployees];
    
    
        Employee *original = [[Employee alloc] initWithFirstName:@"Jay" lastName:@"Balderas" age:@27 yearsEmployed:@2 manager:@"Myself" andEmail:@"iHaveNoIdeaWhatImDoing@codefellows.com"];
    
    Employee *employee2 = [[Employee alloc] initWithFirstName:@"Jay2" lastName:@"Balderas" age:@27 yearsEmployed:@2 manager:@"Adam" andEmail:@"iHaveNoIdeaWhatImDoingVersion2@codefellows.com"];

//        Employee *newDeveloper = [original copy];
//        newDeveloper.firstName = @"Mike";
//        NSLog(original.firstName);
    
        [[EmployeeDatabase shared] add:original];
        [[EmployeeDatabase shared] add:employee2];
//        [[EmployeeDatabase shared] add:employee3];
    
    [self requiredNumberForEachItem:100];//this is using the method made
    
    NSNumber *num1 = @123;
    
    NSNumber *num2 = @321;
    
    switch ([num1 compare:num2]) {
        case NSOrderedSame:
            NSLog(@"NUmbers are equal");
            break;
        case NSOrderedAscending:
            NSLog(@"Less than");
            break;
        case NSOrderedDescending:
            NSLog(@"Greater than");
            break;
        default:
            NSLog(@"Not Equal");
    }
    
    //writing an array literal
    NSString *string1 = @"One";
    NSString *string2 = @"Two";
    NSString *string3 = @"Three";
    
    NSNumber *number = @100;
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:string1, string2, string3, nil];
    
    //    NSMutableArray *array = @[string1, string2, string3];
    
    [array addObject:number];
    
    //writing a dictionary literal
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc]initWithDictionary:@{@"firstName": @"Jay", @"lastName": @"Balderas", @"age": @27}];
    
    [dictionary setObject:@"dog" forKey:@"pet"];
    
    //    NSString *firstName = dictionary[@"firstName"];
    
    dictionary[@"car"] = @"Subaru";
    
    
    
    
    
    
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
    
    NSLog(@"%i", gMoveNumber);
    
}
//autocompletes only if you conform to the protocol
-(void)requiredNumberForEachItem:(int)number{
    
}


@end
