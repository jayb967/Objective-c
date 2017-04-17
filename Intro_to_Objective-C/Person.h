//
//  Person.h
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(strong, nonatomic) NSString *name;//can use this instead of using the setter and getter here and in Person.m



////name accessor methods
//-(NSString *)name;//making the method "name" public
//-(void)setName:(NSString *)name;

//instance method
-(void)walk;

//Class method
+(void)sayHello;

@end
