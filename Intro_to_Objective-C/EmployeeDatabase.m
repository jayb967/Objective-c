//
//  EmployeeDatabase.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/18/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "EmployeeDatabase.h"
#import "NSString+Array.h"

@interface EmployeeDatabase ()
@property(strong, nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase


+(instancetype)shared{
    static EmployeeDatabase *shared = nil;
    
    //use these with singletons
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ //carrot tells us that its a block aka ^
        shared = [[[self class] alloc]init];//use self class method since it reaches the instance of the class to know its one
    });
    return shared;
}

-(instancetype)init{
    if(self) {
        _employees = [[NSMutableArray alloc]init];
    }
    return self;
}


-(NSInteger)count{
    return self.employees.count;
}

-(NSArray *)allEmployees{
    return self.employees;
}

-(void)add: (Employee *)employee{
    [self.employees addObject:employee];
}

-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex:index];
}
-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
}
-(void)removeEmployeeAtIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
}
-(void)removeAllEmployees{
    [self.employees removeAllObjects];
}





//MARK: Helper methods
-(NSURL *)documentsDirectory{
 
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDirectoryURL;
    
}

-(NSURL *)archiveURL {
   return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}





@end
