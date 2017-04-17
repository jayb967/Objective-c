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

//no * because it is not a reference, it is a value type
static int gMoveNumber = 10;//static so that it will show on here only globally

@interface ViewController () <ViewControllerDataSource>//this is conforming to the protocol aka <>

@end

@implementation ViewController
//void is the return type
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self requiredNumberForEachItem:100];//this is using the method made
    
    Person *adam = [[Person alloc] init];//returns a memory place and is initialized
    
    [adam setName:@"Adam"];
    //                          returning instance to "personName"
//    NSString *personName = [adam name];//this is the getter that is returning a value 
    
    [adam walk];
    [Person sayHello];
    
    NSLog(@"%i", gMoveNumber);
    
}
//autocompletes only if you conform to the protocol
-(void)requiredNumberForEachItem:(int)number{

}


@end
