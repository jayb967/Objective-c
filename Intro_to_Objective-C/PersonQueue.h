//
//  PersonQueue.h
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/17/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonQueue <NSObject>
@optional
-(int)count;

@required
-(void)enqueue:(Person);
-(Person)queue;

@end
