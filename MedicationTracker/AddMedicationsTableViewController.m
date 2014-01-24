//
//  AddMedicationsTableViewController.m
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "AddMedicationsTableViewController.h"
#import "MedicationsListTableViewController.h"
#import "Medications.h"

@interface AddMedicationsTableViewController ()

@end

@implementation AddMedicationsTableViewController

@synthesize nameField = _nameField;

@synthesize dosageField = _dosageField;

@synthesize medicationsListTableViewController = _medicationsListTableViewController;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

- (IBAction)doneButtonPressed:(id)sender {
    Medications *newMedication = [[Medications alloc]initWithName:self.nameField.text dosage: self.dosageField.text alarm:NO alarmTime:@""];
    [self.medicationsListTableViewController.medications addObject:newMedication];
    [self dismissViewControllerAnimated:YES completion:nil];
    //enable following line to log name and dosage data to check status of medications mutable array
    //NSLog(@"%@,%@",self.nameField,self.dosageField);
}

- (IBAction)nameFieldKeyboardDismiss:(id)sender {
    [self.nameField resignFirstResponder];
}

- (IBAction)dosageFieldKeyboardDismiss:(id)sender {
    [self.dosageField resignFirstResponder];
}

- (IBAction)setAlarmButtonPressed:(id)sender {
    

        
        //enable following line to log name and dosage data to check status of medications mutable array
        //NSLog(@"%@,%@",self.nameField,self.dosageField);
    


}




@end
