//
//  AddEmployeeViewController.m
//  Intro_to_Objective-C
//
//  Created by Rio Balderas on 4/19/17.
//  Copyright © 2017 Jay Balderas. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "Employee.h"
#import "EmployeeDatabase.h"

@interface AddEmployeeViewController ()
- (IBAction)cancelButton:(UIButton *)sender;
- (IBAction)saveButton:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;



@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)cancelButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)saveButton:(UIButton *)sender {
    Employee *original = [[Employee alloc] initWithFirstName:self.firstNameTextField.text lastName:self.lastNameTextField.text age:NULL yearsEmployed:NULL manager:NULL andEmail:self.emailTextField.text];
    
    [[EmployeeDatabase shared] add:original];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}




@end
