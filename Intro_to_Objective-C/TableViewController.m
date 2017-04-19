//
//  TableViewController.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/18/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "TableViewController.h"
#import "EmployeeDatabase.h"

@interface TableViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *TableViewMain;


@end

@implementation TableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.TableViewMain reloadData];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.TableViewMain.delegate = self;
    self.TableViewMain.dataSource = self;
}

- (IBAction)fireEveryoneButtonPressed:(UIBarButtonItem *)sender {
    [[EmployeeDatabase shared]removeAllEmployees];
    [self.TableViewMain reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[EmployeeDatabase shared] count];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeCell" forIndexPath:indexPath];
 
    NSArray *employees = [[EmployeeDatabase shared] allEmployees];
    Employee *employee = employees[indexPath.row];
    
    cell.textLabel.text = employee.firstName;
    return cell;
    
    
}





@end
