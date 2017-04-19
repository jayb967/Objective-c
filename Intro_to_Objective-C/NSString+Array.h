//
//  NSString+Array.h
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "ViewController.h"

@interface NSString (Array)
-(NSArray *)stringToArray;
//NSArray *array = [@"Hello world" stringToArray]
//Example: @"Hello World" -> [@"Hello", @"World"]
@end

@interface NSString (ReversedString)
+ (NSString *)reversedString:(NSString *)str;
// [NSString reveredString:@"Hello World"]
//Example: @"Hello World" -> @"World Hello"



@end
