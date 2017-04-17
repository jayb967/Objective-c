//
//  NSString+Array.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "NSString+Array.h"

@implementation NSString (Array)
-(NSString *)array{
    
     NSString *array=[NSString new];
    return array;
}
@end

@implementation NSString (ReversedString)

//I dont know if this works.
-(NSMutableString *)reversedString{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [reversedString length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[reversedString substringWithRange:subStrRange]];
    }
    return reversedString;
}

@end
