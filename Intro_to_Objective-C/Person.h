//
//  Person.h
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property(strong, nonatomic) NSString *firstName;//can use this instead of using the setter and getter here and in Person.m
@property(strong, nonatomic) NSString *lastName;

@property(strong, nonatomic) NSNumber *age;

-(instancetype)initWithFirstName:(NSString *)firstName lastName: (NSString *)lastName andAge:(NSNumber *)age;



////name accessor methods
//-(NSString *)name;//making the method "name" public
//-(void)setName:(NSString *)name;

//instance method
-(void)walk;

//Class method
+(void)sayHello;

@end
