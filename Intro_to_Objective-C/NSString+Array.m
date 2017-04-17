//
//  NSString+Array.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "NSString+Array.h"

@implementation NSString (Array)
-(NSArray *)stringToArray{
    //TODO: Convert self to an array and return it
    //Example: @"Hello World" -> [@"Hello", @"World"]
    NSArray *array = [self componentsSeparatedByString:@" "];
    return array;
}
@end

@implementation NSString (ReversedString)

//I dont know if this works.
+ (NSString *)reversedString:(NSString *)str{
    
    NSMutableString *reversedString = [[NSMutableString alloc] init];
    
    NSArray *array = [str stringToArray];
    int count = (int)array.count - 1;
    while (count >= 0) {
        [reversedString appendString:array[count]];
        count --;
    }
    
    return reversedString;
}

@end
