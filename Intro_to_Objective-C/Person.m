//
//  Person.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "Person.h"

@implementation Person

//NSString *_firstName; //underlying instance variable
//NSString *_lastName;
//NSNumber *_age;

-(instancetype)initWithFirstName:(NSString *)firstName lastName: (NSString *)lastName andAge:(NSNumber *)age{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}



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
    NSString *firstName = [self firstName];
    NSString *lastName = [self lastName];
    NSNumber *age = [self age];
    
    
//    NSString *adam = @"Adam";//this is how you define a string literal with @
//    NSLog(@"%@ is walking...Hello %@,", name, adam);//%@ is like interpolation but have to define it like top
    NSLog(@"%@ %@ is still young at %@", firstName, lastName, age);
  
}

+(void)sayHello{
    NSLog(@"Hello!");
}
-(id)copyWithZone:(NSZone *)zone{
    Person *person = [[[self class] alloc]init];//self that class is used instead of "Person" for copying/allocation
    
//    [person setFirstName:[self firstName]];//this is straight objective-c
    person.firstName = self.firstName;
    person.lastName = self.lastName;
    person.age = self.age;
    
    return person;
}
 
@end
