//
//  EditMedicationsTableViewController.m
//  MedicationTracker
//
//  Created by Dare Ryan on 1/9/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "EditMedicationsTableViewController.h"
#import "Medications.h"

@interface EditMedicationsTableViewController ()

@end

@implementation EditMedicationsTableViewController
@synthesize nameField = _nameField;
@synthesize dosageField = _dosageField;
@synthesize alarmSwitch = _alarmSwitch;
@synthesize medication = _medication;

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
    self.nameField.text = self.medication.name;
    self.dosageField.text = self.medication.dosage;
    [self.alarmSwitch setOn:self.medication.done];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)nameDataChanged:(id)sender {
    self.medication.name = self.nameField.text;
}

- (IBAction)dosageDataChanged:(id)sender {
    self.medication.dosage = self.dosageField.text;
}
@end
