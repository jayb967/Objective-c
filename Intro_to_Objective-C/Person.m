//
//  Person.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "Person.h"

@implementation Person

NSString *_name; //underlying instance variable

////this is a getter
//-(NSString *)name{
//    return _name;
//}
////setter, will all start with "set"
//
//-(void)setName:(NSString *)name{
//    _name = name;//this is to access the underlying instance variable
//}

-(void)walk{
    
    //access name first
    //               self is instance of Person
    NSString *name = [self name];
    
//    NSString *adam = @"Adam";//this is how you define a string literal with @
//    NSLog(@"%@ is walking...Hello %@,", name, adam);//%@ is like interpolation but have to define it like top
    NSLog(@"%@ is walking...", name);
}

+(void)sayHello{
    NSLog(@"Hello!");
}

@end