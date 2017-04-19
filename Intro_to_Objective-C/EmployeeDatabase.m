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
    self = [super init];
    
    if(self) {
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        if (!_employees) {//check to see if it is not there first
            //assigning to underlying instance variable aka "_"
            _employees = [[NSMutableArray alloc]init];
        }
    }
    return self;
}

//below method will check if anything cheanges it will save to disk
-(void)save{
    //will allow to save
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:self.archiveURL.path];
    
    if (success) {
        NSLog(@"saved employees");
    } else {
        NSLog(@"save failed");
    }
}


-(NSInteger)count{
    return self.employees.count;
}

-(NSArray *)allEmployees{
    return self.employees;
}

-(void)add: (Employee *)employee{
    [self.employees addObject:employee];
    [self save];//this calls the save method on top to save the updated array
}

-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex:index];
}
-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
    [self save];//this calls the save method on top to save the updated array
}
-(void)removeEmployeeAtIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
    [self save];//this calls the save method on top to save the updated array
}
-(void)removeAllEmployees{
    [self.employees removeAllObjects];
    [self save];//this calls the save method on top to save the updated array
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
